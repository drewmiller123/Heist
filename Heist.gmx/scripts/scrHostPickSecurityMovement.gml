///scrHostPickSecurityMovement()
        //main loop for host when in statePickMovement

if(!instance_exists(currentSecurity))
{
    currentSecurity = 0;
}
if(security[currentSecurity].donePicking)
{
    if(instance_exists(security[currentSecurity+1]))
    {
        currentSecurity++;
    }
    else
    {
        mDone[0] = true;
    }
}

//for now, just select the space that you want to move to
var leftClicked = mouse_check_button_pressed(mb_left);
var hoverSpace = instance_position(mouse_x,mouse_y,objSpace);

if(leftClicked && instance_exists(hoverSpace))
{
    if(instance_exists(security[currentSecurity].currentSpace))
    {
        if(ds_list_find_index(security[currentSecurity].currentSpace.connectedSpaces, hoverSpace) != -1 || hoverSpace == security[currentSecurity].currentSpace)
        {
            mSecurityChosenSpace[currentSecurity] = hoverSpace;
            security[currentSecurity].donePicking = true;
        }
    }
    else
    {
        mSecurityChosenSpace[currentSecurity] = hoverSpace;
        security[currentSecurity].donePicking = true;
    }
}

if(security[numClients].donePicking)
{
    mDone[0] = true;
}

//check if all players are ready
var allReady = true;
for(i = 0; i<=numClients;i++)
{
    if(mDone[i] == false)
    {
        allReady = false;
    }
}

if(allReady == true)
{
    state = stateExecuteMovement;
    scrSendState();
}
