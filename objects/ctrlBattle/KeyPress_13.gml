/// @description Battle mechanics
if !ask {
    audio_play_sound(sndpop,90,0);
    if selenemies>0 {
        //Select an enemy
        selenemies=0;
    }
    else if level==0 { //Engage or Run
        switch option[0] {
            case 0:
                level++;
            break;
            case 1:
                done=choose(1,0);
                if done dialouge("Trying to escape...                    #Freddy and co. have escaped!",0,0);
                else dialouge("Trying to escape...                    #But it failed!",0,0);
                ask=1;
            break;
        }
    } else if level==1 { //Character
        level++;
    } else if level==2 { //Action
        switch option[2] {
            case 0: //Scream
                selenemies=1;
            break;
            case 1: //Skills
                level++;
            break;
            case 2: //Guard
                //increase defence
                level=0;
            break;
            case 3:
                level--;
            break;
        }
    }
}

