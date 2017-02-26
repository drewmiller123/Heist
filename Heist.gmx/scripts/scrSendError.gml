///scrSendError()         //sends Error Message from server to clients

var count = ds_list_size(socketList);

if(count > 0)
{
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, netError);
    buffer_write(buffer, buffer_string, errMsg);    
    
    for(i=0;i<count;i++)
    {   

        var sock = ds_list_find_value(socketList,i);
        var ip = ds_list_find_value(ipList,i);
        var port = ds_list_find_value(portList,i);

        network_send_packet(sock,buffer, buffer_tell(buffer));   
   
    }
}
