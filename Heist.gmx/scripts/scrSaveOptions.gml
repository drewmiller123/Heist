///scrSaveOptions()
if(file_exists("Options.sav")) 
{
    file_delete("Options.sav");
}

ini_open("Options.sav");

ini_write_real("save1","fullScreen",window_get_fullscreen());

ini_close();
