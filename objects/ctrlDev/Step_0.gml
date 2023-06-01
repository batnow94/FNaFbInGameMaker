/// @description Handle input
if mouse_y<64 {
    glow=abs(-((mouse_y+20)/88))+0.5;
    if glow>1 { glow=1; }
} else {
    glow=1;
}
if !ask && mouse_y<20 && mouse_check_button_pressed(mb_left) {
    if step!=1 {
        url_open_ext("http://github.com/yesiateyoursheep/fnafb-in-gm/releases/"+string(version)+"."+string(major)+"."+string(minor)+build+"/","_blank");
        dialouge("Opening your default web browser...",0,0);
    } else {
        ask=1;
        dialouge(newsdetails,1,2,"More info","Dismiss");
    }
}
if ask&&global.input!=-1 {
    if global.input==0 {
        url_open_ext("http://github.com/yesiateyoursheep/fnafb-in-gm/releases/"+string(version)+"."+string(major)+"."+string(minor)+build+"/","_blank");
        dialouge("Opening your default web browser...",0,0);
    }
    ask=0;
    global.input=-1;
}
cdown--;
if cdown<=0 {
    step++;
    if step>=steps {
        step=0;
    }
    cdown=room_speed*5;
    tran=0;
    transition=1;
    olddrawtext=drawtext;
}
if transition {
    tran++;
    if tran==room_speed {
        transition=0;
    }
}
if askupdate && global.input!=-1 {
    askupdate=0;
    if global.input==0 {
        url_open_ext("http://github.com/yesiateyoursheep/fnafb-in-gm/releases","_blank");
        game_end();
    }
}

