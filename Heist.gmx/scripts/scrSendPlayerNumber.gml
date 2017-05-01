///scrSendPlayerNumber(playernumber);  //send room to all clients to create
var count = ds_list_size(objServer.socketList);
var p = argument0;


if(count > 0)
{
    buffer_seek(objServer.buffer, buffer_seek_start, 0);
    buffer_write(objServer.buffer, buffer_u8, netPlayerNumber);
    buffer_write(objServer.buffer, buffer_u8, p);
    
    for(j=0;j<count;j++)
    {   

        var sock = ds_list_find_value(objServer.socketList,j);
        var ip = ds_list_find_value(objServer.ipList,j);
        var port = ds_list_find_value(objServer.portList,j);

        network_send_packet(sock,objServer.buffer, buffer_tell(objServer.buffer));   
   
    }
}
