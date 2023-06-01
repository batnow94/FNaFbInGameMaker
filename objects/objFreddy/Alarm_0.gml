/// @description Check to see if the dialogue is gone.
if !instance_exists(objDialouge) {
    talking=0;
    if audio_is_playing(sndfreddy[real(say)]) {
        audio_stop_sound(sndfreddy[real(say)]);
    }
    if story>0{
        if story<storycount{
            talking=1;
            with instance_nearest(x,y,objstory){
                objFreddy.say=say[objFreddy.story];
                objFreddy.saydelay=saydelay[objFreddy.story];
                objFreddy.saychar=char[objFreddy.story];
            }
            story++;
        }else{
            story=0;
            saychar=0;
        }
    }
}

