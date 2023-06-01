/// @description Init
option=1;
options=3;
otext[0]="New Game";
otext[1]="Continue";
otext[2]="Settings";
if os_type==os_windows||os_type==os_linux||os_type==os_macosx||os_type==os_unknown {
    options++;
    otext[array_length_1d(otext)]="Exit Game";
}
fade=1;
fadeinout=1;

audio_play_sound(bgmFNAFtitle,100,1);

