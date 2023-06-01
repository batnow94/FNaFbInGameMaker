/// @description Load Game and Go to appropriate room
show_debug_message("Starting game...");
avatar=-1;
newgame=0;
fade=0;
fadeinout=0;
fadedelay=room_speed*2;
gametime=0;
rmpower=0;
rmindex=9;
night=1;
setchk=0;
barsub=0;
bary=-36;

//Increment gametime
alarm[1]=room_speed;

if global.saveslot>0 {
    if global.saveslot>=5 {
        loadGame(working_directory+"temp.fnafb");
        show_debug_message("Recovered game from last session!");
    } else {
        loadGame(working_directory+"slot"+string(global.saveslot)+".fnafb");
        show_debug_message("Loaded game in slot "+string(global.saveslot)+"!");
    }
} else {
    //Start game from start.
    newgame=1;
    rm=rmStage;
}

