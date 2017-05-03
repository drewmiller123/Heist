///scrCreatePlayers()
    //creates all players
//generate players
for(i = 0; i <= numClients; i++)
{
    if(i == chiefPlayer)
    {
        for(c = 0; c<= numClients; c++)
        {
            security[securityCount] = instance_create(0,0,objSecurity);
            security[securityCount].player = i;                    
            scrSendPlayer(security[securityCount],i,true);
            securityCount++;
        }
    }
    else
    {
        theif[i] = instance_create(0,0,objTheif);
        theif[i].player = i;
        scrSendPlayer(theif[i],i,false);
    }
}
