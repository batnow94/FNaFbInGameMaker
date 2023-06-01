/// @description Transition into page
if bga<1&&transition==1 {
    bga+=0.05;
}
if transition==0 {
    bga-=0.05;
}
if bga==0 {
    instance_create(0,288,ctrlIntro);
    instance_destroy();
}

///Mouse controls
if global.usemouse {
    var i=0;
    repeat(options) {
        if mouse_y>64+(i*80)&&mouse_y<64+((i+1)*80) {
            if option!=i {
                option=i;
                audio_play_sound(sndblip3,90,0);
            }
        }
        i++;
    }
    if mouse_check_button_pressed(mb_left)&&mouse_y>y&&mouse_y<64+options*80 {
        if mouse_y>64+(option*80)&&mouse_y<64+((option+1)*80) {
            event_perform(ev_keypress,vk_enter);
        }
    }
}

///Keyboard controls
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

