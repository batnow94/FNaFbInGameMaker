/// @description Setup to be done after creator has set variables
//"Party hat appeared"
switch rmpower {
    case 0:
        audio_play_sound(bgm181,90,1);
    break;
    case 1:
        audio_play_sound(bgm181,90,1);
    break;
    case 2:
        audio_play_sound(bgmOFFOST4,90,1);
    break;
    case 3:
        audio_play_sound(bgmOFFOST4,90,1);
    break;
}
dialouge(ename[0]+" appeared!",0,0);
ask=1;
options[1]=players;
options[3]=enemies;

