/// @description Transition and pause the game
if newgame {
    if fadeinout {
        if fade>0 {
            fade-=0.05;
        } else {
            //Start new game
            room_goto(rmStage);
            audio_play_sound(bgmambience2,100,1);
            instance_create(256,96,objFreddy);
            global.ingame=1;
            alarm[0]=room_speed*20*(-global.graphics+3);
            newgame=0;
            touchctrl(0);
        }
    } else {
        if fade<1 {
           fade+=0.05;
        } else {
            fadedelay--;
            if keyboard_check_pressed(vk_enter)||mouse_check_button(mb_left)||fadedelay<1 {
               audio_play_sound(sndpop,90,0);
               fadeinout=1;
            }
        }
    }
}
if global.ingame&&instance_exists(objFreddy) {
    if keyboard_check_pressed(vk_escape)||keyboard_check_pressed(vk_backspace) {
        //Pause game and open pause menu
        night=global.nighttime;
        global.nighttime=0;
        touchctrl(1,1);
        alarm[2]=2;
        //screen_save(temp_directory+"pause.png");
        with (instance_create(0,0,ctrlPause)) {
            //sprpause=sprite_add(temp_directory+"pause.png",1,0,0,0,0);
            //Initialize game info for use when Freddy is paused
            players=1;
            name[0]="Freddy";
            hth[0]=objFreddy.hth;
            mxhth[0]=objFreddy.mxhth;
            skl[0]=objFreddy.skl;
            mxskl[0]=objFreddy.mxskl;
            tec[0]=floor(random_range(0,15*abs(global.gamemode-3)));
            mxtec[0]=100;
            atk[0]=objFreddy.atk;
            def[0]=objFreddy.def;
            eff[0]=objFreddy.eff;
            lvl[0]=objFreddy.lvl;
            xp[0]=objFreddy.xp;
        }
        instance_deactivate_all(0);
        instance_activate_object(ctrlMaster);
        instance_activate_object(ctrlPause);
        if !global.usemouse instance_activate_object(ctrlTouch);
    }
}
//Animate bar sprite
bary+=4;
if bary>=544 {
    barsub=!barsub;
    bary=-36;
}

