///scrHighlightMovement()
    //highlights spaces on the board when the player can move

if(isChief)
{
    /*if(!instance_exists(currentSecurity))
    {
        currentSecurity = 0;
    }*/
    with(objSpace)
    {
        if(instance_exists(security[currentSecurity].currentSpace))
        {
            if(instance_exists(mSecurityChosenSpace[currentSecurity]) && mSecurityChosenSpace[currentSecurity] == id)
            {
                sprite_index = sprChosenSpace;
            }
            else if(ds_list_find_index(security[currentSecurity].currentSpace.connectedSpaces, id) != -1)
            {
                sprite_index = sprAvailableSpace;
            }
            else
            {
                sprite_index = sprSpace;
            }
        }
    }
}
else
{
    with(objSpace)
    {
        if(instance_exists(theif[playerNumber].currentSpace))
        {
            if(instance_exists(chosenSpace) && chosenSpace == id)
            {
                sprite_index = sprChosenSpace;
            }
            else if(ds_list_find_index(theif[playerNumber].currentSpace.connectedSpaces, id) != -1)
            {
                sprite_index = sprAvailableSpace;
            }
            else
            {
                sprite_index = sprSpace;
            }
        }
    }
}
