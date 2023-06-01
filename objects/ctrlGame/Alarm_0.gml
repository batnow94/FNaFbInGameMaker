/// @description Save a backup of the game in case it crashes
alarm[0]=room_speed*20*(-global.graphics+3);
if instance_exists(objFreddy) saveGame(working_directory+"temp.fnafb");
//Don't save the game if Freddy is deactivated, it makes the save unplayable.

