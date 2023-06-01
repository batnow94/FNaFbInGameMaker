/// @description Do a thing
if !global.ask{
    audio_play_sound(sndpop,90,0);
    switch option {
        case 0:
            instance_create(0,0,ctrlNewGame);
            instance_destroy();
        break;
        case 1:
            instance_create(0,0,ctrlLoadGame);
            instance_destroy();
        break;
        case 2:
            instance_create(0,0,ctrlSettings);
            instance_destroy();
        break;
        case 3:
            game_end();
        break;
    }
}

