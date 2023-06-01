/// @description Mouse controls
//Do mouse related stuff
if !ask&&global.usemouse {
    if mouse_x<160&&!choosechar {
        //Selection in menu
        if mouse_check_button_pressed(mb_left) {
            if mouse_y>y+16+(option*24)&&mouse_y<y+16+((option+1)*24) {
                event_perform(ev_keypress,vk_enter);
            }
        }
        var i=0;
        repeat(options) {
            if mouse_y>y+16+(i*24)&&mouse_y<y+16+((i+1)*24) {
                if option!=i {
                    option=i;
                    audio_play_sound(sndblip3,90,0);
                }
            }
            i++;
        }
    } else if mouse_x>160&&choosechar {
        //Selection in characters
        if mouse_check_button_pressed(mb_left) {
            if mouse_y>y+8+(char*100)&&mouse_y<y+8+((char+1)*100) {
                event_perform(ev_keypress,vk_enter);
            }
        }
        var i=0;
        repeat(players) {
            if mouse_y>y+8+(i*100)&&mouse_y<y+8+((i+1)*100) {
                if char!=i {
                    char=i;
                    audio_play_sound(sndblip3,90,0);
                }
            }
            i++;
        }
    }
}

///Keyboard controls
if !ask {
    if keyboard_check_pressed(vk_escape)||keyboard_check_pressed(vk_backspace) {
        //Resume game
        instance_destroy();
    }
    if !choosechar {
        if keyboard_check_pressed(vk_up) {
            if option>=1 {
                option--;
            } else {
                option=options-1;
            }
            audio_play_sound(sndblip3,90,0);
        }
        if keyboard_check_pressed(vk_down) {
            option++;
            if option>=options {
                option=0;
            }
            audio_play_sound(sndblip3,90,0);
        }
    } else {
        if keyboard_check_pressed(vk_up) {
            if char>=1 {
                char--;
            } else {
                char=players-1;
            }
            audio_play_sound(sndblip3,90,0);
        }
        if keyboard_check_pressed(vk_down) {
            char++;
            if char>=players {
                char=0;
            }
            audio_play_sound(sndblip3,90,0);
        }
    }
}

///Dialouges
if ask&&global.input!=-1 {
    ask=0;
    if gameend {
        if global.input==1 {
            //Delete recovery files
            file_delete(working_directory+"temp.fnafb");
            file_delete(working_directory+"temp.fnafb.meta");
            game_restart();
        }
    }
}

