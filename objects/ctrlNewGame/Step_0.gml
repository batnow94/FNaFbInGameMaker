/// @description Setup game with dialouges
if global.input!=-1 {
   if step==0 {
      dialouge("Select night.",1,3,"Night X [Standard Mode]","Night XX [Hard Mode]","Night XXX [Impossible Mode]");
      global.input=-1;
   }
   if step==1 {
      global.gamemode=global.input;
      global.input=-1;
      instance_create(0,0,ctrlGame);
      instance_destroy();
   }
   step++;
}

