/// @description Draw logo and go to rminit
if room==rmInit {
    draw_set_alpha(1);
    draw_set_colour(c_white);
    draw_set_font(fntHeader);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    if !ask {
        logo++;
    }
    if logo<60 {
        draw_sprite(sprLogo,-1,272-(sprite_get_width(sprLogo)/2),208-(sprite_get_height(sprLogo)/2));
    } else if logo<100 {
        draw_sprite(sprLogo,-1,272-(sprite_get_width(sprLogo)/2),208-(sprite_get_height(sprLogo)/2)-(logo-60)/2);
        draw_set_alpha((logo-60)/40);
        draw_text(272,200+(sprite_get_height(sprLogo)/2),string_hash_to_newline("Twisted Fork"));
    } else {
        draw_sprite(sprLogo,-1,272-(sprite_get_width(sprLogo)/2),208-(sprite_get_height(sprLogo)/2)-20);
        draw_set_alpha(1);
        draw_text(272,200+(sprite_get_height(sprLogo)/2),string_hash_to_newline("Twisted Fork"));
    }
    if !ask&&logo>=140 {
        ini_open(working_directory+"settings.ini") {
            ini_write_real("main","touch",touch);
            ini_close();
        }
        room_goto(rmIntro);
    }
}

