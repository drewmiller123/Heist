///scrHostExecuteMovement()
        //main loop for moving players for the host





for(i = 0; i <= numClients; i++)
{
    if(i == chiefPlayer)
    {
        for(s = 0; s <= numClients; s++)
        {
            TweenFire(security[s], x__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*s+30*(numClients+1), 30, security[s].x, mSecurityChosenSpace[s].x);
            TweenFire(security[s], y__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*s+30*(numClients+1), 30, security[s].y, mSecurityChosenSpace[s].y);
            security[s].currentSpace = mSecurityChosenSpace[s];
            scrSendPlayerMovement(s,mSecurityChosenSpace[s].x,mSecurityChosenSpace[s].y,true);
            mSecurityChosenSpace[s] = noone;
            security[s].donePicking = false;
        }
    }
    else
    {
        //theif[i].x = mChosenSpace[i].x;
        TweenFire(theif[i], x__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*i, 30, theif[i].x, mChosenSpace[i].x);
        //theif[i].y = mChosenSpace[i].y;
        TweenFire(theif[i], y__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*i, 30, theif[i].y, mChosenSpace[i].y);
        theif[i].currentSpace = mChosenSpace[i];
        scrSendPlayerMovement(i,mChosenSpace[i].x,mChosenSpace[i].y,false);
        mChosenSpace[i] = noone;
    }
}
chosenSpace = noone;


//if(allReady == true)
//{
    //currently only testing movement

    state = statePickMovement;
    scrSendState();

//}
