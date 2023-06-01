/// @description Init
step=0;
with(ctrlDev){
    instance_destroy();
}
dialouge("This game includes copyrighted music.#Would you like to disable copyrighted music?",1,2,"No","Yes");
audio_stop_sound(bgmFNAFtitle);
touchctrl(0);

