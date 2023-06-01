/// @description Init

//Menu
option=0;
options=8;
otext[0]="Items";
otext[1]="Skills";
otext[2]="Parts";
otext[3]="Status";
otext[4]="Save";
otext[5]="Settings";
otext[6]="End Game";
otext[7]="<- Return";
fade=1;
fadeinout=1;

//Characters
char=0;
players=1;
name[0]="Error";

//Variables
gameend=0;
choosechar=0;
ask=0;
avatar=-1;

//Initialize game info for use when Freddy is paused
hth[0]=0;
mxhth[0]=0;
skl[0]=0;
mxskl[0]=0;
tec[0]=0;
mxtec[0]=100;
atk[0]=0;
def[0]=0;
eff[0]=0;
lvl[0]=0;
xp[0]=0;

audio_pause_all();

