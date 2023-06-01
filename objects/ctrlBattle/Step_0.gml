/// @description Mouse controls
if global.usemouse {
    if mouse_check_button_pressed(mb_left) {
        if level==0 {
            if mouse_y>y+16+(option[0]*24)&&mouse_y<y+16+((option[0]+1)*24) {
                event_perform(ev_keypress,vk_enter);
            }
        }/* else if level==1 {
            if mouse_y<y+16+(option[1]*24)&&mouse_y<y+16+((option[1]+1)*24) {
                event_perform(ev_keypress,vk_enter);
            }
        }*/
    }
    var i=0;
    if level==0 {
        repeat(options[0]) {
            if depth==0&&mouse_x<144&&mouse_y>y+16+(i*24)&&mouse_y<y+16+((i+1)*24) {
                if option[0]!=i {
                    option[0]=i;
                    audio_play_sound(sndblip3,90,0);
                }
            }
            i++;
        }
    }/* else if level==1 {
        repeat(options[1]) {
            if depth==0&&mouse_x>144&&mouse_y>y+16+(i*24)&&mouse_y<y+16+((i+1)*24) {
                if option[1]!=i {
                    option[1]=i;
                    audio_play_sound(sndblip3,90,0);
                }
            }
            i++;
        }
    }*/
}

/* */
///Keyboard controls
if !ask||selenemies>0 {
  if keyboard_check_pressed(vk_escape)||keyboard_check_pressed(vk_backspace) {
      if level>0 {
          audio_play_sound(sndwindup2,90,0);
          level--;
      } else {
          audio_play_sound(snderror,90,0);
      }
  }
  if keyboard_check_pressed(vk_up)&&level!=1 {
      if option[level]>=1 {
          option[level]--;
      } else {
          option[level]=options[level]-1;
      }
      audio_play_sound(sndblip3,90,0);
  }
  if keyboard_check_pressed(vk_down)&&level!=1 {
      option[level]++;
      if option[level]>=options[level] {
          option[level]=0;
      }
      audio_play_sound(sndblip3,90,0);
  }
}
if ask&&!instance_exists(objDialouge) {
    ask=0;
}
if selenemies>0{
   if keyboard_check_pressed(vk_left){
      selenemies--;
      if selenemies<=0{
         selenemies=enemies;
      }
      audio_play_sound(sndblip3,90,0);
   }
   if keyboard_check_pressed(vk_right){
      selenemies++;
      if selenemies>enemies{
         selenemies=1;
      }
   }
}

/* */
///Transitions
if done&&!ask {
    if trans<1 {
        trans+=0.05;
    } else {
        switch rmpower {
            case 0:
                audio_stop_sound(bgm181);
            break;
            case 1:
                audio_stop_sound(bgm181);
            break;
            case 2:
                audio_stop_sound(bgmOFFOST4);
            break;
            case 3:
                audio_stop_sound(bgmOFFOST4);
            break;
        }
    instance_activate_all();
    with objFreddy {
        //Give Freddy his new stats
    }
    instance_destroy();
    }
}
//Move x
if level<=1&&x<0 x+=8;
else if level>=2&&x>-152 x-=8;

/* */
/*  */
