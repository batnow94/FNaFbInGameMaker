/// @description Player Controls
if talking {
    move=0;
}
if instance_position(x,y,objDoor) && !tped && move {
    with instance_nearest(x,y,objDoor) {
        room_goto(rm);
        objFreddy.x=rmx;
        objFreddy.y=rmy;
        ctrlGame.rmpower=rmpower;
        ctrlGame.rmindex=rmindex;
    }
    move=0;
    tped=1;
}
if instance_position(x,y,objBathDoor) && !tped && move {
    with instance_nearest(x,y,objBathDoor) {
        objFreddy.x=rmx;
        objFreddy.y=rmy;
        objFreddy.udlri=udlri;
        ctrlGame.rmindex=rmindex;
        //audio_play_sound(snddooropen Sound missing!
        instance_deactivate_object(objFreddy);
        alarm[0]=room_speed/2;
    }
    move=0;
    tped=1;
}
moved=0;
if move {
    moved=1;
    if !talking && !tped {
        udlri=4;
        if keyboard_check(vk_shift) {
            mspeed=dspeed*2;
        } else {
            mspeed=dspeed;
        }
        if keyboard_check(vk_up) {
            udlri=0;
            if place_free(x,y-32) {
                if onstage {
                    if !instance_position(x,y-32,objWall1) {
                        move=0;
                    }
                } else {
                    if !instance_position(x,y-32,objWall2) {
                        move=0;
                    }
                }
            }
        }
        if keyboard_check(vk_down)&&move {
            udlri=1;
            if place_free(x,y+32) {
                if onstage {
                    if !instance_position(x,y+32,objWall1) {
                        move=0;
                    }
                } else {
                    if !instance_position(x,y+32,objWall2) {
                        move=0;
                    }
                }
            }
        }
        if keyboard_check(vk_left)&&move {
            udlri=2;
            if place_free(x-32,y) {
                if onstage {
                    if !instance_position(x-32,y,objWall1) {
                        move=0;
                    }
                } else {
                    if !instance_position(x-32,y,objWall2) {
                        move=0;
                    }
                }
            }
        }
        if keyboard_check(vk_right)&&move {
            udlri=3;
            if place_free(x+32,y) {
                if onstage {
                    if !instance_position(x+32,y,objWall1) {
                        move=0;
                    }
                } else {
                    if !instance_position(x+32,y,objWall2) {
                        move=0;
                    }
                }
            }
        }
        if udlri!=4 {
            pudlr=udlri;
        }
    }
} else {
    switch udlri {
        case 0:
            y-=mspeed;
        break;
        case 1:
            y+=mspeed;
        break;
        case 2:
            x-=mspeed;
        break;
        case 3:
            x+=mspeed;
        break;
    }
    if place_snapped(32,32) {
        move=1;
        if room=rmStage{
            if (x>=160&&x<=352)&&y<=160 onstage=1;
            else onstage=0;
            if onstage {
                ctrlGame.rmindex=9;
            } else {
                ctrlGame.rmindex=4;
            }
        }
    }
}
if moved&&!move {
    steps++;
    if steps mod 30 == 0 {
        //Freddy is under attack!
        transattack=1;
        anim=0;
        audio_pause_sound(bgmambience2);
        audio_play_sound(sndanimatronicatdoor,99,0);
        //play sound oh shit
    }
}
if tped && udlri!=4 {
    tped=0;
}

animatePlayer(udlri,mspeed);

///Dialouge script
if say!="0" {
    if saydelay>0 {
        saydelay--;
    } else {
        switch chartoname[saychar]{
            case "freddy":
                audio_play_sound(sndfreddy[real(say)],99,0);
            break;
            case "bonnie":
                audio_play_sound(sndbonnie[real(say)],99,0);
            break;
            case "foxy":
                audio_play_sound(sndfoxy[real(say)],99,0);
            break;
            case "mangle":
                audio_play_sound(sndmangle[real(say)],99,0);
            break;
        }
        ini_open(working_directory+global.lang+".ini");
        if ini_read_string(chartoname[saychar],say,"wow, I don't know what to say...")!="-1" {
            dialouge(ini_read_string(chartoname[saychar],say,"wow, I don't know what to say..."),0,0);
        }
        ini_close();
        say="0";
    }
}

///Transitions
if transattack {
    if anim<1 {
        anim+=0.01;
        talking=1;
        move=0;
        udlri=4;
    } else {
        anim=0;
        talking=0;
        transattack=0;
        rmpower=ctrlGame.rmpower;
        ctrlGame.night=global.nighttime;
        global.nighttime=0;
        touchctrl(1,1);
        ctrlGame.alarm[2]=2;
        instance_deactivate_all(0);
        instance_activate_object(ctrlMaster);
        if !global.usemouse instance_activate_object(ctrlTouch);
        with instance_create(0,0,ctrlBattle) {
            //Initialize settings for battle
            rmpower=other.rmpower;
            onstage=other.onstage;
            players=1; //Init Players
            name[0]="Freddy";
            hth[0]=other.hth;
            mxhth[0]=other.mxhth;
            skl[0]=other.skl;
            mxskl[0]=other.mxskl;
            tec[0]=floor(random_range(0,15*abs(global.gamemode-3)));
            mxtec[0]=100;
            atk[0]=other.atk;
            def[0]=other.def;
            eff[0]=other.eff;
            lvl[0]=other.lvl;
            xp[0]=other.xp;
            
            enemies=floor(random_range(1,4+other.rmpower));
            i=0;
            repeat(enemies){
                switch rmpower {
                    case 0:
                        ename[i]="Alpha";
                        espr[i]=sprpartyhat;
                    break;
                    case 1:
                        ename[i]="Beta";
                        espr[i]=sprbetapartyhat;
                    break;
                    case 2:
                        ename[i]="Gamma";
                        espr[i]=sprgammapartyhat;
                    break;
                    case 3:
                        ename[i]="Omega";
                        espr[i]=spromegapartyhat;
                    break;
                }
                ename[i]+=" Party Hat";
                ehth[0]=100*(rmpower+1);
                emxhth[0]=100*(rmpower+1);
                //eskl[0]=other.skl;    I'm not sure if these are used
                //emxskl[0]=other.mxskl;
                eatk[0]=(rmpower+1);
                edef[0]=(rmpower+1);
                eeff[0]="none";
                i++;
            }
        }
    }
}

