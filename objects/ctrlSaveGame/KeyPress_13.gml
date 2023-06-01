/// @description Do a thing
if option<4 {
    //Save game
    global.saveslot=option+1;
    instance_activate_all();
    dialouge("Game Saved!",0,0);
    with(ctrlPause) instance_destroy();
    instance_destroy();
    saveGame(working_directory+"slot"+string(option+1)+".fnafb");
} else {
    //Return
    audio_play_sound(sndwindup2,90,0);
    transition=0;
}

