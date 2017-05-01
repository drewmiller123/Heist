///scrConnectRight(room)
    //connects to spaces in right room
var rm = argument0;
if(instance_exists(left))
{
    if(instance_exists(rm.right))
    {
        ds_list_add(left.connectedSpaces, rm.right)
    }
    else
    {
        ds_list_add(left.connectedSpaces, rm.top, rm.bottom);
    }
}
else
{
    if(instance_exists(rm.right))
    {
        ds_list_add(top.connectedSpaces, rm.right)
        ds_list_add(bottom.connectedSpaces, rm.right)
    }
    else
    {
        ds_list_add(top.connectedSpaces, rm.top, rm.bottom);
        ds_list_add(bottom.connectedSpaces, rm.top, rm.bottom);      
    }
}
