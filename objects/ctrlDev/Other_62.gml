/// @description Retreive news
if ds_map_find_value(async_load, "id")==gnews {
    if ds_map_find_value(async_load, "status") == 0 {
        news=ds_map_find_value(async_load, "result");
        if string_char_at(news,1)=="<" {
            news="[c=c0392b][b]This version doesn't have release notes...[/b][/c]";
            show_debug_message("News appears to be an html 404 page.")
        } else {
            var i=file_text_open_from_string(news) {
                news=file_text_read_string(i);
                file_text_readln(i);
                while(!file_text_eof(i)){
                    newsdetails=file_text_read_string(i)+"#";
                    file_text_readln(i);
                }
            }
        }
    }
    else {
       news = " [c=c0392b][b]Failed to retreive news...[/b][/c]";
    }
}
if ds_map_find_value(async_load, "id")==gupdate {
    if ds_map_find_value(async_load, "status") == 0 {
       ini_open_from_string(ds_map_find_value(async_load, "result"));
       if (ini_read_real("version","version",0)*100)+(ini_read_real("version","major",0)*10)+ini_read_real("version","minor",0) > (version*100)+(major*10)+minor {
            update=1;
            show_debug_message("FNaFB is out of date (Compared local version "+string((version*100)+(major*10)+minor)+" to serverside version "+string((ini_read_real("version","version",0)*100)+(ini_read_real("version","major",0)*10)+ini_read_real("version","minor",0))+")");
            if !instance_exists(objDialouge) {
                dialouge("An update to FNaFB-in-GM is available!#Would you like to download it now?",1,2,"yes","no");
                askupdate=1;
                ask=1;
            }
       } else {
            update=0;
            show_debug_message("FNaFB is up to date (Compared local version "+string(version)+"."+string(major)+"."+string(minor)+" to serverside version "+string(ini_read_real("version","version",0))+"."+string(ini_read_real("version","major",0))+"."+string(ini_read_real("version","minor",0))+")");
       }
       ini_close();
    }
    else {
        show_debug_message("update.ini invalid or missing!");
        update=0;
    }
}

