/// @description Apply/change settings
if !del&&!ask {
    honk=1;
    tgl=options-4;
    if option<tgl { //Change settings
        soption[option]++;
        if soption[option]>soptions[option] {
            soption[option]=1;
        }
        audio_play_sound(sndblip3,90,0);
        honk=0;
    }
    if option==tgl { //Reset the game
        del=1;
        dialouge("To delete all saved data (including game progress!), hold down delete for 3 seconds.",0,0);
    }
    if option==tgl+1 { //Launch backup manager
        ask=1;
        dialouge("Work in progress...",0,0);
    }
    if option==tgl+2 { //Save and apply settings
        //Save cross-platform settings first
        global.graphics=soption[0]-1;
        global.usemouse=soption[1]-1;
        if !global.usemouse&&global.touch touchctrl(0);
        else touchctrl(1,0);
        if os_type==os_windows||os_type==os_linux||os_type==os_macosx||os_type==os_unknown {
            //Save desktop specfic settings
            global.touch=soption[2]-1;
            global.scale=soption[3];
            //Make game fit in screen
            if 544*global.scale<display_get_width()&&416*global.scale<display_get_height() {
                window_set_size(544*global.scale,416*global.scale);
            } else {
                ask=1;
                dialouge("Your screen needs to be at least "+string(544*global.scale)+"x"+string(416*global.scale)+" to support "+string(global.scale)+"x resolution.#You can go in fullscreen to have unrestriced resolutions.",0,0);
                global.scale=1;
                window_set_size(544,416);
            }
            display_set_gui_size(544*global.scale,416*global.scale);
            window_set_fullscreen(soption[4]-1);
            ctrlMaster.alarm[0]=1;
        }
        ini_open(working_directory+"settings.ini") {
            ini_write_real("main","graphics",global.graphics);
            ini_write_real("main","touch",global.touch);
            ini_write_real("main","usemouse",global.usemouse);
            if os_type==os_windows||os_type==os_linux||os_type==os_macosx||os_type==os_unknown {
                ini_write_real("main","windowsize",global.scale);
                ini_write_real("main","fullscreen",soption[4]-1);
            }
            ini_close();
        }
    }
    if option==tgl+3 { //Return
        audio_play_sound(sndwindup2,90,0);
        transition=0;
        honk=0;
    } if honk {
        audio_play_sound(sndhonk,90,0);
    }
}

