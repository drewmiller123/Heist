///scrConnectLowerLeft(room)
    //connects to spaces in lower left room
    var rm = argument0;
if(instance_exists(bottom))
{
    if(instance_exists(rm.top))
    {
        ds_list_add(bottom.connectedSpaces, rm.top)
    }
    else
    {
        ds_list_add(bottom.connectedSpaces, rm.right);
    }
}
else
{
    if(instance_exists(rm.top))
    {
        ds_list_add(left.connectedSpaces, rm.top)
    }
    else
    {
        ds_list_add(left.connectedSpaces, rm.right);
    }
}
