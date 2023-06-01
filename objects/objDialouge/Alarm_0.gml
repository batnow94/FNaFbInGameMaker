/// @description Init based on settings from dialouge()
if string_copy(text,0,1)=="~" {
    rtf=1;
    text=string_copy(text,1,string_length(text));
}

