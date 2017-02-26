///scrSendReadyUpdate();  //send ready update to all clients
var count = ds_list_size(objServer.socketList);

if(count > 0)
{
    buffer_seek(objServer.buffer, buffer_seek_start, 0);
    buffer_write(objServer.buffer, buffer_u8, netNumClients);
    buffer_write(objServer.buffer, buffer_u8, numClients);
    
    for(i=0;i<count;i++)
    {   

        var sock = ds_list_find_value(objServer.socketList,i);
        var ip = ds_list_find_value(objServer.ipList,i);
        var port = ds_list_find_value(objServer.portList,i);

        network_send_packet(sock,objServer.buffer, buffer_tell(objServer.buffer));   
   
    }
}
