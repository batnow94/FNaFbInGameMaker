/// @description Do a thing
if !ask {
    audio_play_sound(sndpop,90,0);
    if !choosechar {
        switch option {
            case 0:
                //Items
            break;
            case 1:
                //Skills
                choosechar=1;
            break;
            case 2:
                //Parts
                choosechar=1;
            break;
            case 3:
                //Status
                choosechar=1;
            break;
            case 4:
                //Save Game
                instance_create(0,0,ctrlSaveGame);
                instance_deactivate_object(self);
            break;
            case 5:
                //Settings
                instance_create(0,0,ctrlSettings);
                instance_deactivate_object(self);
            break;
            case 6:
                //End Game
                gameend=1;
                ask=1;
                dialouge("Are you sure you want to end the game?",1,2,"No","Yes");
            break;
            case 7:
                //Unpause
                instance_destroy();
            break;
        }
    } else {
        choosechar=0;
        switch option {
            case 1:
                //Skills
                //Open skill browser for char
            break;
            case 2:
                //Parts
                //Open parts browser for char
            break;
            case 3:
                //Status
                //Show status for char
            break;
        }
    }
}

