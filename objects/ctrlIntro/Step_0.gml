/// @description Mouse controls
if global.usemouse&&!global.ask {
    if mouse_check_button_pressed(mb_left) {
        if mouse_y>y+(option*24)&&mouse_y<y+((option+1)*24) {
            event_perform(ev_keypress,vk_enter);
        }
    }
    var i=0;
    repeat(options) {
        if mouse_y>y+(i*24)&&mouse_y<y+((i+1)*24) {
            if option!=i {
                option=i;
                audio_play_sound(sndblip3,90,0);
            }
        }
        i++;
    }
}

///Keyboard controls
if !global.ask {
    if keyboard_check_pressed(vk_escape)||keyboard_check_pressed(vk_backspace) {
        game_end();
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
}

