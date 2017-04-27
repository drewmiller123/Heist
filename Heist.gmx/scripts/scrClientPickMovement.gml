///scrClientPickMovement()
        //main loop for client when in statePickMovement



//for now, just select the space that you want to move to
var leftClicked = mouse_check_button_pressed(mb_left);
var hoverSpace = instance_position(mouse_x,mouse_y,objSpace);

if(leftClicked && instance_exists(hoverSpace))
{
    chosenSpace = hoverSpace;
    scrSendChosenSpace();
    //mDone[0] = true;
}
