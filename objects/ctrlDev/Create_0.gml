/// @description Init
step=0;
steps=3;
cdown=room_speed*5;
transition=0;
tran=0;
askupdate=0;
ask=0;
update=0;
olddrawtext="";
drawtext="Please Wait...";

//Request update news
if os_is_network_connected() {
    gnews=http_get("https://github.com/yesiateyoursheep/fnafb-in-gm/releases/download/"+string(version)+"."+string(major)+"."+string(minor)+build+"/releasenotes.txt");
    news=" [i]Retreiving news...[/i]";
    newsdetails="~[b]Missing details![/b]#For details on this update, select [i]More Info[/i].";
    gupdate=http_get("https://github.com/yesiateyoursheep/fnafb-in-gm/raw/master/project-test-tube.gmx/version.ini");
} else {
    news=" [b]Unable to fetch news when offline...[/b]";
    gnews=-1;
    gupdate=-1;
}

