///scrConnectUpperLeft(room)
    //connects to spaces in upper left room
    var rm = argument0;
if(instance_exists(top))
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(top.connectedSpaces, rm.bottom)
    }
    else
    {
        ds_list_add(top.connectedSpaces, rm.right);
    }
}
else
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(left.connectedSpaces, rm.bottom)
    }
    else
    {
        ds_list_add(left.connectedSpaces, rm.right);
    }
}
