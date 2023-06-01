/// @description Create a battle and add players
audio_pause_all();
done=0;
trans=0;
selenemies=0;

players=0;
enemies=0;
rmpower=0;

//"Party hat appeared!"
alarm[0]=1;

x=0; y=320;
option[0]=0;
    option[1]=0;
        option[2]=0;
            option[3]=0;
options[0]=2;
    options[1]=0;
        options[2]=4;
            options[3]=0;
otext[0,0]="Engage";
    //Level 1 is players
        otext[2,0]="Scream";
        otext[2,1]="Skills";
            otext[3,0]="<no skills>"
        otext[2,2]="Guard";
        otext[2,3]="<- Return";
otext[0,1]="Run";

fade=1;
fadeinout=1;
level=0;

