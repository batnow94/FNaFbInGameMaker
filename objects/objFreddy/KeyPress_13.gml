/// @description Ridiculous talking script
if talking {
    alarm[0]=2;
} else if move {
    switch pudlr {
        //Check for any objects to talk about in direction freddy is facing.
        case 0:
            if instance_position(x,y-32,objtalk)!=noone {
                with instance_position(x,y-32,objtalk) {
                    objFreddy.say=say;
                    objFreddy.saydelay=saydelay;
                }
                talking=1;
            }
            else if instance_position(x,y-32,objstory)!=noone {
                with instance_position(x,y-32,objstory) {
                    objFreddy.say=say[0];
                    objFreddy.saydelay=saydelay[0];
                    objFreddy.saychar=char[0];
                    objFreddy.storycount=count;
                }
                talking=1;
                story=1;
            }
        break;
        case 1:
            if instance_position(x,y+32,objtalk)!=noone {
                with instance_position(x,y+32,objtalk) {
                    objFreddy.say=say;
                    objFreddy.saydelay=saydelay;
                }
                talking=1;
            }
            else if instance_position(x,y+32,objstory)!=noone {
                with instance_position(x,y+32,objstory) {
                    objFreddy.say=say[0];
                    objFreddy.saydelay=saydelay[0];
                    objFreddy.saychar=char[0];
                    objFreddy.storycount=count;
                }
                talking=1;
                story=1;
            }
        break;
        case 2:
            if instance_position(x-32,y,objtalk)!=noone {
                with instance_position(x-32,y,objtalk) {
                    objFreddy.say=say;
                    objFreddy.saydelay=saydelay;
                }
                talking=1;
            }
            else if instance_position(x-32,y,objstory)!=noone {
                with instance_position(x-32,y,objstory) {
                    objFreddy.say=say[0];
                    objFreddy.saydelay=saydelay[0];
                    objFreddy.saychar=char[0];
                    objFreddy.storycount=count;
                }
                talking=1;
                story=1;
            }
        break;
        case 3:
            if instance_position(x+32,y,objtalk)!=noone {
                with instance_position(x+32,y,objtalk) {
                    objFreddy.say=say;
                    objFreddy.saydelay=saydelay;
                }
                talking=1;
            }
            else if instance_position(x+32,y,objstory)!=noone {
                with instance_position(x+32,y,objstory) {
                    objFreddy.say=say[0];
                    objFreddy.saydelay=saydelay[0];
                    objFreddy.saychar=char[0];
                    objFreddy.storycount=count;
                }
                talking=1;
                story=1;
            }
        break;
    }
}

