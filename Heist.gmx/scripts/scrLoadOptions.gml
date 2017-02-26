if(file_exists("Options.sav"))
{
    ini_open("Options.sav")
    
    var fullScreen = ini_read_real("save1","fullScreen", window_get_fullscreen());
    
    window_set_fullscreen(fullScreen);
    
    ini_close();
}
