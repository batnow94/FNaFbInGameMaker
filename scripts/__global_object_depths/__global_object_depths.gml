function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -10000; // ctrlMaster
	global.__objectDepths[1] = -1000; // objDialouge
	global.__objectDepths[2] = 0; // ctrlIntro
	global.__objectDepths[3] = 0; // ctrlDev
	global.__objectDepths[4] = 0; // ctrlLoadGame
	global.__objectDepths[5] = 0; // ctrlSaveGame
	global.__objectDepths[6] = 0; // ctrlNewGame
	global.__objectDepths[7] = 0; // ctrlSettings
	global.__objectDepths[8] = -99; // ctrlTouch
	global.__objectDepths[9] = -100; // ctrlGame
	global.__objectDepths[10] = 0; // ctrlPause
	global.__objectDepths[11] = 0; // ctrlBattle
	global.__objectDepths[12] = 0; // objWall
	global.__objectDepths[13] = 0; // objWall1
	global.__objectDepths[14] = 0; // objWall2
	global.__objectDepths[15] = 0; // objDoor
	global.__objectDepths[16] = 0; // objBathDoor
	global.__objectDepths[17] = 0; // objtalk
	global.__objectDepths[18] = 0; // objstory
	global.__objectDepths[19] = -1; // objFreddy
	global.__objectDepths[20] = -1; // objMyCollection
	global.__objectDepths[21] = 0; // objSatanDesk
	global.__objectDepths[22] = 0; // objTable
	global.__objectDepths[23] = 0; // objShortTable
	global.__objectDepths[24] = 0; // objTest


	global.__objectNames[0] = "ctrlMaster";
	global.__objectNames[1] = "objDialouge";
	global.__objectNames[2] = "ctrlIntro";
	global.__objectNames[3] = "ctrlDev";
	global.__objectNames[4] = "ctrlLoadGame";
	global.__objectNames[5] = "ctrlSaveGame";
	global.__objectNames[6] = "ctrlNewGame";
	global.__objectNames[7] = "ctrlSettings";
	global.__objectNames[8] = "ctrlTouch";
	global.__objectNames[9] = "ctrlGame";
	global.__objectNames[10] = "ctrlPause";
	global.__objectNames[11] = "ctrlBattle";
	global.__objectNames[12] = "objWall";
	global.__objectNames[13] = "objWall1";
	global.__objectNames[14] = "objWall2";
	global.__objectNames[15] = "objDoor";
	global.__objectNames[16] = "objBathDoor";
	global.__objectNames[17] = "objtalk";
	global.__objectNames[18] = "objstory";
	global.__objectNames[19] = "objFreddy";
	global.__objectNames[20] = "objMyCollection";
	global.__objectNames[21] = "objSatanDesk";
	global.__objectNames[22] = "objTable";
	global.__objectNames[23] = "objShortTable";
	global.__objectNames[24] = "objTest";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
