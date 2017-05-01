///scrConnectUp(room)
    //connects to spaces in upper room through duct
    var rm = argument0;
if(instance_exists(top))
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(top.connectedDucts, rm.bottom)
    }
    else
    {
        ds_list_add(top.connectedDucts, rm.left, rm.right);
    }
}
else
{
    if(instance_exists(rm.bottom))
    {
        ds_list_add(left.connectedDucts, rm.bottom)
        ds_list_add(right.connectedDucts, rm.bottom)
    }
    else
    {
        ds_list_add(left.connectedDucts, rm.left, rm.right);
        ds_list_add(right.connectedDucts, rm.left, rm.right);
    }
}
