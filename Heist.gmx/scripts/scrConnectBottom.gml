///scrConnectBottom(room)
    //connects to spaces in bottom room through duct
var rm = argument0;
if(instance_exists(bottom))
{
    if(instance_exists(rm.top))
    {
        ds_list_add(bottom.connectedDucts, rm.top)
    }
    else
    {
        ds_list_add(bottom.connectedDucts, rm.left, rm.right);
    }
}
else
{
    if(instance_exists(rm.top))
    {
        ds_list_add(left.connectedDucts, rm.top)
        ds_list_add(right.connectedDucts, rm.top)
    }
    else
    {
        ds_list_add(left.connectedDucts, rm.left, rm.right);
        ds_list_add(right.connectedDucts, rm.left, rm.right);
    }
}
