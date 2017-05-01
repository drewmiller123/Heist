///scrConnectRooms()
    // cycles through every room and adds connected rooms to ds_list
    // and connects the adjoining spaces together
    
with(objRoom)
{
    switch(number)
    {
        case 0:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,1),
                ds_list_find_value(rooms,2),ds_list_find_value(rooms,9));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,0));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,1));
            scrConnectUp(ds_list_find_value(connectedRooms,2));
        break;
        case 1:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,0),
                ds_list_find_value(rooms,3),ds_list_find_value(rooms,4),
                ds_list_find_value(rooms,9),ds_list_find_value(rooms,10));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,0));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,1));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,2));
            scrConnectRight(ds_list_find_value(connectedRooms,3));
            scrConnectUp(ds_list_find_value(connectedRooms,4));
        break;
        case 2:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,0),
                ds_list_find_value(rooms,4),ds_list_find_value(rooms,5),
                ds_list_find_value(rooms,9),ds_list_find_value(rooms,11));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,1));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,2));
            scrConnectLeft(ds_list_find_value(connectedRooms,3));
            scrConnectUp(ds_list_find_value(connectedRooms,4));
        break;
        case 3:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,1),
                ds_list_find_value(rooms,6),ds_list_find_value(rooms,10));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,0));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,1));
            scrConnectRight(ds_list_find_value(connectedRooms,2));
        break;
        case 4:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,1),
                ds_list_find_value(rooms,2),ds_list_find_value(rooms,6),
                ds_list_find_value(rooms,7),ds_list_find_value(rooms,9),
                ds_list_find_value(rooms,10),ds_list_find_value(rooms,11),
                ds_list_find_value(rooms,12));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,1));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,2));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,3));
            scrConnectBottom(ds_list_find_value(connectedRooms,4));
            scrConnectLeft(ds_list_find_value(connectedRooms,5));
            scrConnectRight(ds_list_find_value(connectedRooms,6));
            scrConnectUp(ds_list_find_value(connectedRooms,7));
        break;
        case 5:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,2),
                ds_list_find_value(rooms,7),ds_list_find_value(rooms,11));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,1));
            scrConnectLeft(ds_list_find_value(connectedRooms,2));
        break;
        case 6:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,3),
                ds_list_find_value(rooms,4),ds_list_find_value(rooms,8),
                ds_list_find_value(rooms,10),ds_list_find_value(rooms,12));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,1));
            scrConnectUpperRight(ds_list_find_value(connectedRooms,2));
            scrConnectBottom(ds_list_find_value(connectedRooms,3));
            scrConnectRight(ds_list_find_value(connectedRooms,4));
        break;
        case 7:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,4),
                ds_list_find_value(rooms,5),ds_list_find_value(rooms,8),
                ds_list_find_value(rooms,11),ds_list_find_value(rooms,12));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,1));
            scrConnectUpperLeft(ds_list_find_value(connectedRooms,2));
            scrConnectBottom(ds_list_find_value(connectedRooms,3));
            scrConnectLeft(ds_list_find_value(connectedRooms,4));
        break;
        case 8:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,6),
                ds_list_find_value(rooms,7),ds_list_find_value(rooms,12));
            scrConnectLowerLeft(ds_list_find_value(connectedRooms,0));
            scrConnectLowerRight(ds_list_find_value(connectedRooms,1));
            scrConnectBottom(ds_list_find_value(connectedRooms,2));
        break;
        case 9:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,0),
                ds_list_find_value(rooms,1),ds_list_find_value(rooms,2),
                ds_list_find_value(rooms,4));
            scrConnectBottom(ds_list_find_value(connectedRooms,0));
            scrConnectLeft(ds_list_find_value(connectedRooms,1));
            scrConnectRight(ds_list_find_value(connectedRooms,2));
            scrConnectUp(ds_list_find_value(connectedRooms,3));
        break;
        case 10:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,1),
                ds_list_find_value(rooms,3),ds_list_find_value(rooms,4),
                ds_list_find_value(rooms,6));
            scrConnectBottom(ds_list_find_value(connectedRooms,0));
            scrConnectLeft(ds_list_find_value(connectedRooms,1));
            scrConnectRight(ds_list_find_value(connectedRooms,2));
            scrConnectUp(ds_list_find_value(connectedRooms,3));
        break;
        case 11:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,2),
                ds_list_find_value(rooms,4),ds_list_find_value(rooms,5),
                ds_list_find_value(rooms,7));
            scrConnectBottom(ds_list_find_value(connectedRooms,0));
            scrConnectLeft(ds_list_find_value(connectedRooms,1));
            scrConnectRight(ds_list_find_value(connectedRooms,2));
            scrConnectUp(ds_list_find_value(connectedRooms,3));
        break;
        case 12:
            ds_list_add(connectedRooms,ds_list_find_value(rooms,4),
                ds_list_find_value(rooms,6),ds_list_find_value(rooms,7),
                ds_list_find_value(rooms,8));
            scrConnectBottom(ds_list_find_value(connectedRooms,0));
            scrConnectLeft(ds_list_find_value(connectedRooms,1));
            scrConnectRight(ds_list_find_value(connectedRooms,2));
            scrConnectUp(ds_list_find_value(connectedRooms,3));
        break;
    }
}
