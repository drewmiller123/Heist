///scrClientPickMovement()
        //main loop for client when in statePickMovement



//for now, just select the space that you want to move to
var leftClicked = mouse_check_button_pressed(mb_left);
var hoverSpace = instance_position(mouse_x,mouse_y,objSpace);

if(leftClicked && instance_exists(hoverSpace))
{
    if(instance_exists(theif[playerNumber].currentSpace))
    {
        if(ds_list_find_index(theif[playerNumber].currentSpace.connectedSpaces, hoverSpace) != -1 || hoverSpace == theif[playerNumber].currentSpace)
        {
            chosenSpace = hoverSpace;
            mChosenSpace[playerNumber] = chosenSpace;
            scrSendChosenSpace();
            //mDone[playerNumber] = true;
        }
    }
    else
    {
        chosenSpace = hoverSpace;
        mChosenSpace[playerNumber] = chosenSpace;
        scrSendChosenSpace();
        //mDone[playerNumber] = true;
    }
}
