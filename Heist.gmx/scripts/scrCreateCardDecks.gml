///scrCreateCardDecks()
    //creates chiefDeck and theifDeck and shuffles
    
//generate card decks
var numTypeChiefCards = 8;
for(i = 0; i<numTypeChiefCards; i++)
{
    if(i==6 || i==7)
    {
        for(j=0;j<3;j++)
        {
            var tCard = instance_create(0,0,objCard);
            tCard.type = i;
            ds_list_add(chiefDeck,tCard);
        }
    }
    else
    {
        for(j=0;j<4;j++)
        {
            var tCard = instance_create(0,0,objCard);
            tCard.type = i;
            ds_list_add(chiefDeck,tCard);
        }
    }
}
var numTypeTheifCards = 10;
for(i=numTypeChiefCards; i<numTypeChiefCards+numTypeTheifCards; i++)
{
    for(j=0;j<4;j++)
        {
            var tCard = instance_create(0,0,objCard);
            tCard.type = i;
            ds_list_add(theifDeck,tCard);
        }
}
ds_list_shuffle(chiefDeck);
ds_list_shuffle(theifDeck);

