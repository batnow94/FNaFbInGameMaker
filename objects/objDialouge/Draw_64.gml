/// @description Draw dialouge
if yn&&printed {
   draw_sprite(sprDialouge,0,272,y-16-(options*20))
}

draw_set_alpha(1);
draw_self();
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(fntMain);
if avatar==-1 {
    if rtf draw_text_rtf(x+4,y-40,text,fntMainReg,fntMain,fntMainItalic,fntMainBoldItalic);
    else draw_text_ext(x+8,y-40,string_hash_to_newline(dtext),20,528);
} else {
    if rtf draw_text_rtf(x+100,y-40,text,fntMainReg,fntMain,fntMainItalic,fntMainBoldItalic);
    else {
        draw_sprite(sprFaces,avatar,x,y-48);
        draw_text_ext(x+104,y-40,string_hash_to_newline(dtext),20,432);
    }
}
if yn&&printed {
    var i=0;
    if fade==0.5 { fadeinout=0; }
    if fade==1 {fadeinout=1; }
    if fadeinout==1 { fade-=0.05; }
    if fadeinout==0 { fade+=0.05; }
    repeat(options) {
        draw_text(280,y-60-(options*20)+(i*24),string_hash_to_newline(otext[i]));
        if option == i {
            draw_set_alpha(fade);
            draw_line(280,y-40-(options*20)+(i*24),540,y-40-(options*20)+(i*24));
            draw_set_alpha(1);
        }
        i++;
    }
}

