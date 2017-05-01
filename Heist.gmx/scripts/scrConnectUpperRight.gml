///scrConnectUpperRight(room)
    //connects to spaces in upper right room
    var rm = argument0;
if(instance_exists(top))
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(top.connectedSpaces, rm.bottom)
    }
    else
    {
        ds_list_add(top.connectedSpaces, rm.left);
    }
}
else
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(right.connectedSpaces, rm.bottom)
    }
    else
    {
        ds_list_add(right.connectedSpaces, rm.left);
    }
}
