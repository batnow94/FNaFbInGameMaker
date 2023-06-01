/// @description Draw menu
draw_set_alpha(bga);
draw_background_tiled(bgSpots,0,0);

var i=0;
if fade==0.5 { fadeinout=0; }
if fade==1 {fadeinout=1; }
if fadeinout==1 { fade=fade-0.05; }
if fadeinout==0 { fade=fade+0.05; }
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(bga);
draw_set_font(fntHeader);
draw_text(16,16,string_hash_to_newline("Select a save slot"));
draw_set_font(fntMain);
repeat(options) {
    draw_text(16,64+(i*80),string_hash_to_newline(otext[i]));
    if option == i {
        draw_set_alpha(bga*fade);
        draw_line(x+16,84+(i*80),x+128,84+(i*80));
        draw_set_alpha(bga);
    }
    if set[i+1] {
        var dx=0;
        if hasFreddy[i+1] {
            draw_sprite(sprFreddy,0,x+192+dx,84+(i*80));
            dx+=48;
        }
        if hasBonnie[i+1] {
            draw_sprite(sprBonnie,0,x+192+dx,84+(i*80));
            dx+=48;
        }
        if hasChica[i+1] {
            draw_sprite(sprChica,0,x+192+dx,84+(i*80));
            dx+=48;
        }
        if hasFoxy[i+1] {
            draw_sprite(sprFoxy,0,x+192+dx,84+(i*80));
        }
        draw_set_halign(fa_right);
        draw_text(528,128+(i*80),string_hash_to_newline(hms(gametime[i+1])));
        draw_set_halign(fa_left);
    }
    i++;
}

