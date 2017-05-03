///scrDrawCards()
    //draw cards for each player until they have a full hand
    //and sends drawn cards to the proper players.
    
for(i = 0; i <= numClients; i++)
{
    if(i == chiefPlayer)
    {
        while(ds_list_size(playerHand[i]) < 3 + numClients)
        {
            if(ds_list_size(chiefDeck) == 0)
            {
                ds_list_copy(chiefDeck,chiefDiscard);
                ds_list_clear(chiefDiscard);
            }
            

            var drawnCard = ds_list_find_value(chiefDeck,0);
            var cType = drawnCard.type;
            ds_list_add(playerHand[i],drawnCard);
            
            scrSendCard(i,cType);
            ds_list_delete(chiefDeck,0);
            
            
        } 
    }
    else
    {
        while(ds_list_size(playerHand[i]) < 3)
        {
            if(ds_list_size(theifDeck) == 0)
            {
                ds_list_copy(theifDeck,theifDiscard);
                ds_list_clear(theifDiscard);
            }
            var drawnCard = ds_list_find_value(theifDeck,0);
            ds_list_add(playerHand[i],drawnCard);
            scrSendCard(i,drawnCard.type)
            ds_list_delete(theifDeck,0);
        }
    }
}
