/// @description Init
audio_stop_all();
option=0;
options=5;
otext[0]="File 1";
otext[1]="File 2";
otext[2]="File 3";
otext[3]="File 4";
otext[4]="<- Return";
fade=1;
fadeinout=1;

//Transition
bga=0;
transition=1;

//Load data from .fnafb.meta
var a i=1;
set[1]=0;
set[2]=0;
set[3]=0;
set[4]=0;
set[5]=0;
repeat(4) {
    if file_exists(working_directory+"slot"+string(i)+".fnafb.meta") {
        ini_open(working_directory+"slot"+string(i)+".fnafb.meta");
            if ini_read_real("meta","exists",0) {// && (ini_read_real("meta","saveslot",0)==i) {
                set[i]=1;
                gametime[i]=ini_read_real("meta","gametime",0);
                hasFreddy[i]=ini_read_real("data","freddy",0);
                hasBonnie[i]=ini_read_real("data","bonnie",0);
                hasChica[i]=ini_read_real("data","chica",0);
                hasFoxy[i]=ini_read_real("data","foxy",0);
            }
        ini_close();
    }
}

