/// @description Load the game
if option<4 {
    if !set[option+1] {
        audio_play_sound(snderror,90,0);
    } else {
        if file_exists(working_directory+"slot"+string(option+1)+".fnafb") {
            global.saveslot=option+1;
            instance_create(0,0,ctrlGame);
            audio_play_sound(sndhonk,90,0);
            instance_destroy();
        } else {
            audio_play_sound(snderror,90,0);
        }
    }
} else {
    audio_play_sound(sndwindup2,90,0);
    transition=0;
}

