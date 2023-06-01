show_debug_overlay(1);
bb_col=ds_list_create();
bb_for=ds_list_create();
bb_txt=bbcode_decode("[c=ffffff][b]Start [/b][i]Typing![/i][/c]",bb_for,bb_col);
show_debug_message(bb_txt);

