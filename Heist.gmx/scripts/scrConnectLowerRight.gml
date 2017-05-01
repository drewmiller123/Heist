///scrConnectUpperLeft(room)
    //connects to spaces in lower right room
    var rm = argument0;
if(instance_exists(bottom))
{
    if(instance_exists(rm.top))
    {
        ds_list_add(bottom.connectedSpaces, rm.top)
    }
    else
    {
        ds_list_add(bottom.connectedSpaces, rm.left);
    }
}
else
{
    if(instance_exists(rm.top))
    {
        ds_list_add(right.connectedSpaces, rm.top)
    }
    else
    {
        ds_list_add(right.connectedSpaces, rm.left);
    }
}
