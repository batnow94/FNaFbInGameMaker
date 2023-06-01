/// @description Init
anim=0;
udlri=4;
pudlr=1;
move=1;
dspeed=2;
mspeed=2;
onstage=1;
tped=0;
avatar=0;
moved=0;
transattack=0;
steps=0;

//< >Stats and Inventory System

hth=180;    //Health
mxhth=180;  //Max Health
skl=120;    //Skill
mxskl=120;  //Max Skill
atk=1;      //Attack
def=1;      //Defence
eff="none"; //Effect
lvl=1       //Level
xp=0        //XP
// XP level boundaries                                                                                \\
// 1  2   3   4   5   6   7   8   9   10   11   12   13    14    15    16     17    18    19    20    ||
// 90                                                                                                 //

items=ds_list_create();itemq=ds_list_create();    //Consumables
    ds_list_add(items,"spizza");
    ds_list_add(itemq,1);
hands=ds_list_create();handq=ds_list_create();    //Weapons
    //Player starts with no hands
parts=ds_list_create();partq=ds_list_create();    //Armor
    //Player starts with no parts
keys=ds_list_create();keyq=ds_list_create();      //Key items
    //Player starts with no keys

equ=ds_list_create();   //Equipped items
    ds_list_add(equ,"cmic","none","ha","ba","none");
    //               hand  shield head body fuel
skills=ds_list_create();//Character skills
    //Player starts with no skills
//</>Stats and Inventory System

//Say arr you ready for freddy.
talking=1;
say="1";
saydelay=20;
story=0;
storycount=0;
saychar=0;

///Ridiculous script to map sounds to an array
sndfreddy[1]=sndfreddy1;
sndfreddy[2]=sndfreddy2;
sndfreddy[3]=sndfreddy3;
sndfreddy[4]=sndfreddy4;
sndfreddy[5]=sndfreddy5;
sndfreddy[6]=sndfreddy6;
sndfreddy[7]=sndfreddy7;
sndfreddy[8]=sndfreddy8;
sndfreddy[9]=sndfreddy9;
sndfreddy[10]=sndfreddy10;
sndfreddy[11]=sndfreddy11;
sndfreddy[12]=sndfreddy12;
sndfreddy[13]=sndfreddy13;
sndfreddy[14]=sndfreddy14;
sndfreddy[15]=sndfreddy15;
sndfreddy[16]=sndfreddy16;
sndfreddy[17]=sndfreddy17;
sndfreddy[18]=sndfreddy18;
sndfreddy[19]=sndfreddy19;
sndfreddy[20]=sndfreddy20;
sndfreddy[21]=sndfreddy21;
sndfreddy[22]=sndfreddy22;
sndfreddy[23]=sndfreddy23;
sndfreddy[24]=sndfreddy24;
sndfreddy[25]=sndfreddy25;
sndfreddy[26]=sndfreddy26;
sndfreddy[27]=sndfreddy27;
sndfreddy[28]=sndfreddy28;
sndfreddy[29]=sndfreddy29;
sndfreddy[31]=sndfreddy31;
sndfreddy[32]=sndfreddy32;
sndfreddy[33]=sndfreddy33;
sndfreddy[34]=sndfreddy34;
sndfreddy[35]=sndfreddy35;
sndfreddy[36]=sndfreddy36;
sndfreddy[37]=sndfreddy37;
sndfreddy[38]=sndfreddy38;
sndfreddy[39]=sndfreddy39;
sndfreddy[40]=sndfreddy40;
sndfreddy[41]=sndfreddy41;
sndfreddy[42]=sndfreddy42;
sndfreddy[43]=sndfreddy43;
sndfreddy[44]=sndfreddy44;
sndfreddy[45]=sndfreddy45;
sndbonnie[1]=sndbonnie1;
sndbonnie[2]=sndbonnie2;
sndbonnie[3]=sndbonnie3;
sndbonnie[4]=sndbonnie4;
sndfoxy[1]=sndfoxy1;
sndfoxy[2]=sndfoxy2;
sndfoxy[3]=sndfoxy3;
sndfoxy[4]=sndfoxy4;
sndmangle[1]=sndmangle1;

//map character sprites to names
chartoname[0]="freddy";
chartoname[1]="bonnie";
chartoname[2]="chica";
chartoname[3]="foxy";
chartoname[4]="bb";
chartoname[5]="bonnie";
chartoname[6]="gfreddy";
chartoname[7]="toybonnie";
chartoname[8]="toyfreddy";
chartoname[9]="toychica";
chartoname[10]="mangle";

