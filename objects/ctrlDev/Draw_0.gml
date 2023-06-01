/// @description Draw dev info
draw_set_alpha(glow);
draw_set_colour(c_white);
draw_rectangle(0,0,544,20,0);
switch step {
    case 0:
        drawtext=" [b]DEVELOPMENT BUILD: [/b][i]"+string(version)+"."+string(major)+"."+string(minor)+build+"[/i]";
    break;
    case 1:
        drawtext=" [b]UPDATE NEWS[/b]: "+news;
    break;
    case 2:
        if update drawtext="[c=2ecc71][b]There's an update available![/b][/c] Click here to download.";
        else drawtext=" [i]No updates available right now.[i]";
    break;
}

draw_set_alpha(abs(-(tran/room_speed)));
draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_text_rtf(0,1-tran,olddrawtext,fntMainReg,fntMain,fntMainItalic,fntMainBoldItalic);

draw_set_alpha(1);
draw_text_rtf(4,1,drawtext,fntMainReg,fntMain,fntMainItalic,fntMainBoldItalic);

