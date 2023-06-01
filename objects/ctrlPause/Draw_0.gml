/// @description Draw menu
//Boxes
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(0,0,160,416,0);
draw_set_colour(make_colour_rgb(44,62,80));
draw_set_alpha(1);
draw_rectangle(160,0,544,416,0);
draw_set_colour(make_colour_rgb(52,73,94));
draw_rectangle(0,386,160,416,0);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//Token counter
draw_text(80,392,string_hash_to_newline("99999 Token(s)"))
draw_set_halign(fa_left);

//Menu
var i=0;
if fade==0.5 { fadeinout=0; }
if fade==1 {fadeinout=1; }
if fadeinout==1 { fade=fade-0.05; }
if fadeinout==0 { fade=fade+0.05; }
repeat(options) {
    draw_text(x+8,y+16+(i*24),string_hash_to_newline(otext[i]));
    if option == i {
        draw_set_alpha(fade);
        draw_line(x+8,y+36+(i*24),x+128,y+36+(i*24));
        draw_set_alpha(1);
    }
    i++;
}

//Characters
i=0;
repeat(players) {
    draw_set_halign(fa_left);
    if name[i]=="Freddy" draw_sprite(sprFaces,0,168,8+(i*100));
    else if name[i]=="Bonnie" draw_sprite(sprFaces,1,168,8+(i*100));
    else if name[i]=="Chica" draw_sprite(sprFaces,2,168,8+(i*100));
    else if name[i]=="Foxy" draw_sprite(sprFaces,3,168,8+(i*100));
    draw_text(272,30+(i*100),string_hash_to_newline(name[i]));
    draw_set_colour(c_blue);
    draw_text(272,50+(i*100),string_hash_to_newline("LV"));
    draw_set_colour(c_white);
    draw_text(300,50+(i*100),string_hash_to_newline(string(lvl[i])));
    draw_set_colour(c_blue);
    draw_text_transformed(434,50+(i*100),string_hash_to_newline("LIFE"),0.6,0.9,0);
    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_rectangle_colour(434,60+(i*100),434+(hth[i]/mxhth[i])*100,65+(i*100),make_colour_rgb(211,84,0),make_colour_rgb(211,84,0),make_colour_rgb(243,156,18),make_colour_rgb(243,156,18),0);
    draw_text(534,50+(i*100),string_hash_to_newline(string(hth[i])+"/"+string(mxhth[i])));
    draw_set_colour(c_blue);
    draw_set_halign(fa_left);
    draw_text_transformed(434,70+(i*100),string_hash_to_newline("SKILL"),0.6,0.9,0);
    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_rectangle_colour(434,80+(i*100),434+(skl[i]/mxskl[i])*100,85+(i*100),make_colour_rgb(41,128,185),make_colour_rgb(41,128,185),make_colour_rgb(52,152,219),make_colour_rgb(52,152,219),0);
    draw_text(534,70+(i*100),string_hash_to_newline(string(skl[i])+"/"+string(mxskl[i])));
    i++;
}
if choosechar {
    draw_line(168,104+(char*100),534,104+(char*100))
}

