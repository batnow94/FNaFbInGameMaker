/// @description Respond to dialouge change
if room==rmInit{
    if ask&&input!=-1 {
        if asktouch {
            touch=!input;
            input=-1;
            ask=0;
            asktouch=0;
        }
        if askrecover {
            if global.input==0 {
                saveslot=5;
                ingame=1;
                instance_create(0,0,ctrlGame);
            } else {
                file_delete(working_directory+"temp.fnafb");
                file_delete(working_directory+"temp.fnafb.meta");
            }
            input=-1;
            ask=0;
            askrecover=0;
        }
    }
    else if keyboard_check(vk_enter)||mouse_check_button(mb_left) {
        if logo<100 logo=100;
    }
}

