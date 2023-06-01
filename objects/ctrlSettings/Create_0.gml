/// @description Init
option=0;
options=6;
soptions[0]=3;
soptions[1]=2;
soptions[2]=0;
soptions[3]=0;
soptions[4]=0;
soptions[5]=0;
soption[0]=1;
soption[1]=1;
ini_open(working_directory+"settings.ini") {
    soption[0]=ini_read_real("main","graphics",1)+1;
    soption[1]=ini_read_real("main","usemouse",1)+1;
    ini_close();
}
otext[0,0]="Graphics";
    otext[0,1]="minimal";
    otext[0,2]="decent";
    otext[0,3]="overkill";
otext[1,0]="Input";
    otext[1,1]="buttons only";
    otext[1,2]="buttons + touchscreen";
otext[2,0]="Reset game";
otext[3,0]="Import/Export Saves";
otext[4,0]="Apply";
otext[5,0]="<- Return";

if os_type==os_windows||os_type==os_linux||os_type==os_macosx||os_type==os_unknown {
    //Desktop focused features, 
    otext[1,1]="keyboard only";
    otext[1,2]="keyboard + mouse";
    options+=3;
    soptions[2]=2;
    soptions[3]=3;
    soptions[4]=2;
    soptions[5]=0;
    soptions[6]=0;
    soptions[7]=0;
    soptions[8]=0;
    soption[2]=1;
    soption[3]=1;
    soption[4]=1;
    ini_open(working_directory+"settings.ini") {
        soption[2]=ini_read_real("main","touch",1)+1;
        soption[3]=ini_read_real("main","windowsize",1);
        soption[4]=ini_read_real("main","fullscreen",0)+1;
        ini_close();
    }
    
    otext[2,0]="Touchscreen";
        otext[2,1]="off";
        otext[2,2]="on";
    otext[3,0]="Window Size";
        otext[3,1]="1x";
        otext[3,2]="2x";
        otext[3,3]="3x";
    otext[4,0]="Fullscreen";
        otext[4,1]="off";
        otext[4,2]="on";
    otext[5,0]="Reset game";
    otext[6,0]="Import/Export Saves";
    otext[7,0]="Apply";
    otext[8,0]="<- Return";
}

fade=1;
fadeinout=1;

//Transition
bga=0;
transition=1;

//Sound
audio_stop_sound(bgmFNAFtitle);
audio_play_sound(bgsOfficeFan,90,1);

//Dialouge handling
avatar=-1;
ask=0;
del=0;
deli=0;
reset=-1;

