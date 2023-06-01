if inout==0 {
    if image_yscale<1 image_yscale+=0.05;
} else {
    if image_yscale<0 image_yscale-=0.05;
    else instance_destroy();
}
if !printed {
    dtext=dtext+string_char_at(text,string_length(dtext)+1);
    if string_length(dtext)==string_length(text) printed=1;
} else {
    if yn {
        //Animate yn dialouge
    }
}

///Controls
if grace>0 grace--;
if global.usemouse { //Mouse controls
  var i=0;
  repeat(options) {
    if mouse_y>y-60-(options*20)+i*24&&mouse_y<y-60-(options*20)+(i+1)*24 {
      if option!=i {
        option=i;
        audio_play_sound(sndblip3,90,0);
      }
    }
    i++;
  }
  if mouse_check_button_pressed(mb_left) {
    if !yn||(mouse_y>y-60-(options*20)+option*24&&mouse_y<y-60-(options*20)+(option+1)*24) {
      keyboard_key_press(vk_enter);
    }
  }
}
if keyboard_check_pressed(vk_enter)&&grace==0{//Enter
  keyboard_key_release(vk_enter);
  audio_play_sound(sndpop,90,0);
  if !printed {
      dtext=text;
      printed=1;
  } else {
    if yn {
      global.input=option;
    } else {
      global.input=0;
    }
    inout=1;
  }
}
if yn{//Up and down
  if keyboard_check_pressed(vk_up){
    option--;
    if option<0 option=options-1;
    audio_play_sound(sndblip3,90,0);
  }
  if keyboard_check_pressed(vk_down){
    option++
    if option>=options option=0;
    audio_play_sound(sndblip3,90,0);
  }
}

