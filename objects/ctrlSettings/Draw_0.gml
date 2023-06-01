/// @description Draw menu
draw_set_alpha(bga);
draw_background(OfficeOn,0,0);

var i=0;
if fade==0.5 { fadeinout=0; }
if fade==1 {fadeinout=1; }
if fadeinout==1 { fade=fade-0.05; }
if fadeinout==0 { fade=fade+0.05; }
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(bga);
draw_set_font(fntHeader);
draw_text(16,16,string_hash_to_newline("Settings"));
draw_set_font(fntMain);
repeat(options) {
    draw_text(16,128+(i*24),string_hash_to_newline(otext[i,0]));
    if option == i {
        draw_set_alpha(bga*fade);
        draw_line(16,144+(i*24),128,144+(i*24));
        draw_set_alpha(bga);
    }
    ix=140;
    is=1;
    repeat(soptions[i]) {
        if soption[i]!=is {
            draw_set_colour(c_gray);
        }
        draw_text(16+ix,128+(i*24),string_hash_to_newline(otext[i,is]));
        ix+=string_width(string_hash_to_newline(otext[i,is]))+8;
        is++;
        draw_set_colour(c_white);
    }
    i++;
}
//Reset the game easter egg
if reset>0 {
    reset--;
    draw_sprite(seqgoldenfreddy,0,0,0);
    if reset==0 {
        audio_stop_all();
        game_restart();
    }
}

