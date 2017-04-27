///scrHostExecuteMovement()
        //main loop for moving players for the host





for(i = 0; i <= numClients; i++)
{
    theif[i].x = mChosenSpace[i].x;
    theif[i].y = mChosenSpace[i].y;
    mChosenSpace[i] = noone;
    scrSendPlayerMovement(i,theif[i].x,theif[i].y);
}

//if(allReady == true)
//{
    //currently only testing movement
    state = statePickMovement;
    scrSendState();
//}
