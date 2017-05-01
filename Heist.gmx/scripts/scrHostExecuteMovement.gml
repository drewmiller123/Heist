///scrHostExecuteMovement()
        //main loop for moving players for the host





for(i = 0; i <= numClients; i++)
{
    //theif[i].x = mChosenSpace[i].x;
    TweenFire(theif[i], x__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*i, 30, theif[i].x, mChosenSpace[i].x);
    //theif[i].y = mChosenSpace[i].y;
    TweenFire(theif[i], y__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*i, 30, theif[i].y, mChosenSpace[i].y);
    theif[i].currentSpace = mChosenSpace[i];
    scrSendPlayerMovement(i,mChosenSpace[i].x,mChosenSpace[i].y);
    mChosenSpace[i] = noone;
}
chosenSpace = noone;

//if(allReady == true)
//{
    //currently only testing movement
    state = statePickMovement;
    scrSendState();
//}
