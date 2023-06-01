/// @description Transition into room and handle user input
if bga<1&&transition==1 {
    bga+=0.05;
}
if transition == 0 {
    bga-=0.05;
}
if bga==0 {
    if global.ingame instance_activate_object(ctrlPause);
    else instance_create(0,288,ctrlIntro);
    audio_stop_sound(bgsOfficeFan);
    instance_destroy();
}
if del {
    if !instance_exists(objDialouge) {
        del=0;
        deli=0;
    } else if keyboard_check(vk_delete)&&deli>room_speed*3 {
        audio_play_sound(sndend1,100,0);
        reset=room_speed;
        file_delete(working_directory+"slot1.fnafb");
        file_delete(working_directory+"slot2.fnafb");
        file_delete(working_directory+"slot3.fnafb");
        file_delete(working_directory+"slot4.fnafb");
        file_delete(working_directory+"slot1.fnafb.meta");
        file_delete(working_directory+"slot2.fnafb.meta");
        file_delete(working_directory+"slot3.fnafb.meta");
        file_delete(working_directory+"slot4.fnafb.meta");
        file_delete(working_directory+"temp.fnafb");
        file_delete(working_directory+"temp.fnafb.meta");
        deli=-1;
        objDialouge.visible=0;
    }
    deli++
}

///Mouse controls
//Do mouse related stuff
if (!del&&!ask)&&global.usemouse {
    var i=0;
    repeat(options) {
        if mouse_y>128+(i*24)&&mouse_y<128+((i+1)*24) {
            if option!=i {
                option=i;
                audio_play_sound(sndblip3,90,0);
            }
        }
        i++;
    }
    if mouse_check_button_pressed(mb_left)&&mouse_y>y&&mouse_y<128+options*24 {
        if mouse_y>128+(option*24)&&mouse_y<128+((option+1)*24) {
            event_perform(ev_keypress,vk_enter);
        }
    }
}

///Keyboard controls
if !del&&!ask {
    if keyboard_check_pressed(vk_escape)||keyboard_check_pressed(vk_backspace) {
        audio_play_sound(sndwindup2,90,0);
        transition=0;
    }
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
    if keyboard_check_pressed(vk_left)&&option<options-3 {
        soption[option]--;
        if soption[option]<1 {
            soption[option]=soptions[option];
        }
        audio_play_sound(sndblip3,90,0);
    }
    if keyboard_check_pressed(vk_right)&&option<options-3 {
        soption[option]++;
        if soption[option]>soptions[option] {
            soption[option]=1;
        }
        audio_play_sound(sndblip3,90,0);
    }
}
else if ask&&!instance_exists(objDialouge){
    ask=0;
}

