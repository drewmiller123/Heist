///scrHostPickMovement()
        //main loop for host when in statePickMovement



//for now, just select the space that you want to move to
var leftClicked = mouse_check_button_pressed(mb_left);
var hoverSpace = instance_position(mouse_x,mouse_y,objSpace);

if(leftClicked && instance_exists(hoverSpace))
{
    chosenSpace = hoverSpace;
    mChosenSpace[0] = chosenSpace;
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
