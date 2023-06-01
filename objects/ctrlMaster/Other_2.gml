/// @description Initialize globalvars and load settings
/* Debugging zone */
//show_debug_overlay(1); //Benchmarking performance

application_surface_draw_enable(false);
randomize();
globalvar input,ask,gamemode,copyright,saveslot,graphics,touch,ingame,nighttime,scale,lang,legacy,usemouse;
input=-1;
ask=0;
copyright=0;
gamemode=0;
saveslot=-1;
ingame=0;
nighttime=1;
lang="en";
legacy=0;

//logo animation
logo=0;

ask=0;
asktouch=0;
askrecover=0;

//[EXPERIMENTAL] Performance boost - Disable surfaces - breaks when changing window scale
//application_surface_enable(0);

//Load settings
ini_open(working_directory+"settings.ini")
scale=ini_read_real("main","windowsize",1);
graphics=ini_read_real("main","graphics",1);
window_set_fullscreen(ini_read_real("main","fullscreen",0));
touch=ini_read_real("main","touch",-1);
usemouse=ini_read_real("main","usemouse",1);
ini_close();

if !usemouse touchctrl(0);

//Set language if possible
lang=string_lower(os_get_language()); //This code assumes that en.ini will always be available. The game won't work otherwise.
if lang!="en" {
    if string_length(lang)!=2 {
        show_debug_message("Language provided in invalid format ("+lang+")! Resorted to en.");
        lang="en";
    } else if file_exists(working_directory+lang+".ini") {
        show_debug_message("Language set to "+lang+"!");
    } else {
        show_debug_message("No language file available for "+lang+", translators, get on to it!");
        lang="en";
    }
}

//Check if player is using a touchscreen
if touch==-1 {
    if os_type==os_android||os_type==os_ios||os_type==os_tizen||os_type==os_winphone {
        //This is definitely a touch screen
        touch=1;
    } else if os_type==os_win8native||os_type==os_unknown||os_type==os_browser {
        //This might be a touch screen, let's ask to be sure
        touch=1;
        ask=1;
        asktouch=1;
        dialouge("Is this device a touchscreen?",1,2,"yes","no");
    }
}

//Make game fit in screen
if 544*scale<display_get_width()&&416*scale<display_get_height() {
    window_set_size(544*scale,416*scale);
} else {
    scale=1;
    window_set_size(544*scale,416*scale);
}
display_set_gui_size(544*scale,416*scale);
alarm[0]=1;

//Check if we can restore a game that was never saved properly
if file_exists(working_directory+"temp.fnafb") {
    ask=1;
    askrecover=1;
    dialouge("Autosave found!#Would you like to resume your previous game?",1,2,"Yes","No");
}

/* */
/*  */
