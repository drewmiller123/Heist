///scrConnectRight(room)
    //connects to spaces in right room
var rm = argument0;
if(instance_exists(right))
{
    if(instance_exists(rm.left))
    {
        ds_list_add(right.connectedSpaces, rm.left)
    }
    else
    {
        ds_list_add(right.connectedSpaces, rm.top, rm.bottom);
    }
}
else
{
    if(instance_exists(rm.left))
    {
        ds_list_add(top.connectedSpaces, rm.left)
        ds_list_add(bottom.connectedSpaces, rm.left)
    }
    else
    {
        ds_list_add(top.connectedSpaces, rm.top, rm.bottom);
        ds_list_add(bottom.connectedSpaces, rm.top, rm.bottom);      
    }
}
