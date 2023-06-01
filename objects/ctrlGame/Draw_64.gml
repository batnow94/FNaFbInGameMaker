/// @description Draw game gui
if !newgame {
    draw_set_alpha(1);
    draw_sprite(sprRec,0,0,416);
    draw_set_alpha(0.3);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_rectangle(0,0,544,416,0);
    if global.graphics>0 draw_sprite_stretched(sprStatic,-1,0,0,544,416);
    draw_background_tiled(bgScanlines,0,0);
    draw_sprite_stretched(sprBar,barsub,0,bary,544,36)
    draw_set_alpha(1);
    draw_sprite_ext(sprOverlay,0,6,6,1,1,0,c_white,1);
    draw_sprite_ext(sprOverlay,0,538,6,1,1,270,c_white,1);
    draw_sprite_ext(sprOverlay,0,538,410,1,1,180,c_white,1);
    draw_sprite_ext(sprOverlay,0,6,410,1,1,90,c_white,1);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_font(fntMid);
    draw_set_colour(make_colour_rgb(125,125,125));
    draw_text(272,390,string_hash_to_newline("POWER"));
    draw_set_font(fntMain);
    draw_set_halign(fa_left);
    draw_sprite(sprMap,rmindex,544,416);
    draw_sprite(sprPowerBar,rmpower,272,384);
}

