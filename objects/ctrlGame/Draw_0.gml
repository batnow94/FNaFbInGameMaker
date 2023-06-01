/// @description Draw game elements
//Git gud and join today
if fade>0 {
    draw_set_alpha(1);
    draw_set_colour(c_black);
    draw_rectangle(0,0,544,416,0);
    draw_set_alpha(fade);
    draw_sprite(seqNews,0,0,0);
    draw_set_alpha(1);
}

