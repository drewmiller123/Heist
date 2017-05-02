///scrSendSecurityChosenSpace(securityNumber)
        //sends the clients chosen space to the host
        
buffer_seek(buffer, buffer_seek_start,0);
buffer_write(buffer, buffer_u8,netSpace);
buffer_write(buffer, buffer_u8,argument0);
buffer_write(buffer, buffer_u16, mSecurityChosenSpace[argument0].number);
buffer_write(buffer, buffer_bool, isChief);

network_send_packet(objClient.socket, objClient.buffer, buffer_tell(objClient.buffer));

