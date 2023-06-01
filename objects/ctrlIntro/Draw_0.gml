/// @description Draw menu
var i=0;
if fade==0.5 { fadeinout=0; }
if fade==1 {fadeinout=1; }
if fadeinout==1 { fade=fade-0.05; }
if fadeinout==0 { fade=fade+0.05; }
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fntMain);
repeat(options) {
    draw_text(x+16,y+(i*24),string_hash_to_newline(otext[i]));
    if option == i {
        draw_set_alpha(fade);
        draw_line(x+16,y+(i*24)+20,x+128,y+(i*24)+20);
        draw_set_alpha(1);
    }
    i++;
}
draw_text(4,394,string_hash_to_newline("Make backups of saves before using them!"));

