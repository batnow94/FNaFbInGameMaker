/// @description Draw menu
if fade==0.5 { fadeinout=0; }
if fade==1 {fadeinout=1; }
if fadeinout==1 { fade=fade-0.05; }
if fadeinout==0 { fade=fade+0.05; }
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fntMain);
draw_set_alpha(1);

//Draw room bg
switch room {
    case rmStage:
        if onstage {
            draw_background(Stage,0,0);
        } else {
            draw_background(MainHall,0,0);
        }
    break;
    case rmBackroom:
        draw_background(Backroom,0,0);
    break;
    case rmPirateCove:
        draw_background(PirateCove,0,0);
    break;
    case rmBathroom:
        draw_background(Bathroom,0,0);
    break;
    case rmWestHall:
        draw_background(WestHall,0,0);
    break;
    case rmEastHall:
        draw_background(EastHall,0,0);
    break;
    case rmWestHallCorner:
        draw_background(choose(WestCorner,WestCorner2),0,0);
    break;
    case rmEastHallCorner:
        draw_background(EastCorner,0,0);
    break;
    case rmCloset:
        draw_background(Closet,0,0);
    break;
}

//Draw enemies
switch enemies {
    case 1:
        draw_sprite(espr[0],-1,272,160);
    break;
    case 2:
        draw_sprite(espr[0],-1,180,160);
        draw_sprite(espr[1],-1,363,160);
    break;
    case 3:
        draw_sprite(espr[0],-1,136,140);
        draw_sprite(espr[1],-1,272,170);
        draw_sprite(espr[2],-1,408,150);
    break;
    case 4:
        draw_sprite(espr[0],-1,109,140);
        draw_sprite(espr[1],-1,217,180);
        draw_sprite(espr[2],-1,326,160);
        draw_sprite(espr[3],-1,434,140);
    break;
    case 5:
        draw_sprite(espr[0],-1,90,180);
        draw_sprite(espr[1],-1,180,140);
        draw_sprite(espr[2],-1,271,160);
        draw_sprite(espr[3],-1,362,140);
        draw_sprite(espr[3],-1,423,180);
    break;
    case 6:
        draw_sprite(espr[0],-1,77,160);
        draw_sprite(espr[1],-1,154,160);
        draw_sprite(espr[2],-1,231,160);
        draw_sprite(espr[3],-1,310,160);
        draw_sprite(espr[3],-1,388,160);
        draw_sprite(espr[3],-1,466,160);
    break;
    case 7:
        draw_sprite(espr[0],-1,77,160);
        draw_sprite(espr[1],-1,154,160);
        draw_sprite(espr[2],-1,231,160);
        draw_sprite(espr[3],-1,310,160);
        draw_sprite(espr[3],-1,388,160);
        draw_sprite(espr[3],-1,466,160);
    break;
}

//Draw battle GUI
draw_sprite(sprDialouge,0,x,y+48);
if selenemies>0{
    draw_sprite(sprRedArrow,-1,(selenemies/(enemies+1))*544,70)
}
var i=0;
repeat(options[0]) {
    draw_text(x+16,y+8+i*20,string_hash_to_newline(otext[0,i]));
    if option[0]==i&&level==0 {
        draw_set_alpha(fade);
        draw_line(x+16,y+i*20+24,x+128,y+i*20+24);
        draw_set_alpha(1);
    }
    i++;
}
i=0;
if level>=1 {
    if level==1 draw_set_alpha(0.2);
    else draw_set_alpha(0.5);
    draw_rectangle(x+544,y,x+696,416,0);
    draw_set_alpha(1);
    if level==2 {
        repeat(options[2]) {
            draw_text(x+560,y+8+i*20,string_hash_to_newline(otext[2,i]));
            if option[2]==i {
                draw_set_alpha(fade);
                draw_line(x+560,y+i*20+24,x+688,y+i*20+24);
                draw_set_alpha(1);
            }
            i++;
        }
    }
}
i=0;
repeat(players) {
    if level==1&&option[1]==i {
        draw_set_colour(c_white);
        draw_set_alpha(fade);
        draw_line(x+160,y+i*20+24,x+526,y+i*20+24);
        draw_set_alpha(1);
    }
    if level>>1 {
        draw_set_colour(c_white);
        draw_set_alpha(0.5);
        draw_rectangle(x+160,y+6+i*20,x+543,y+i*20+24,0);
        draw_set_alpha(1);
    }
    draw_text(x+160,y+8+i*20,string_hash_to_newline(name[i]));
    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_rectangle_colour(x+306,y+8+i*20,x+306+(hth[i]/mxhth[i])*74,y+22+i*20,make_colour_rgb(211,84,0),make_colour_rgb(211,84,0),make_colour_rgb(243,156,18),make_colour_rgb(243,156,18),0);
    draw_text(x+380,y+8+i*20,string_hash_to_newline(string(hth[i])));
    draw_set_colour(c_blue);
    draw_set_halign(fa_left);
    draw_text_transformed(x+306,y+8+i*20,string_hash_to_newline("LIFE"),0.6,0.9,0);
    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_rectangle_colour(x+390,y+8+i*20,x+390+(skl[i]/mxskl[i])*66,y+22+i*20,make_colour_rgb(41,128,185),make_colour_rgb(41,128,185),make_colour_rgb(52,152,219),make_colour_rgb(52,152,219),0);
    draw_text(x+456,y+8+i*20,string_hash_to_newline(string(skl[i])));
    draw_set_colour(c_blue);
    draw_set_halign(fa_left);
    draw_text_transformed(x+390,y+8+i*20,string_hash_to_newline("SKILL"),0.6,0.9,0);
    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_rectangle_colour(x+464,y+8+i*20,x+464+(tec[i]/mxtec[i])*62,y+22+i*20,make_colour_rgb(64,214,74),make_colour_rgb(64,214,74),make_colour_rgb(61,245,73),make_colour_rgb(61,245,73),0);
    draw_text(x+526,y+8+i*20,string_hash_to_newline(string(tec[i])));
    draw_set_colour(c_blue);
    draw_set_halign(fa_left);
    draw_text_transformed(x+464,y+8+i*20,string_hash_to_newline("TECH"),0.6,0.9,0);
    i++;
}

