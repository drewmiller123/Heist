///scrClientSendReady;  //client updates ready status

buffer_seek(buffer, buffer_seek_start,0);
buffer_write(buffer, buffer_u8,netReady);
buffer_write(buffer, buffer_bool, ready);

network_send_packet(objClient.socket, objClient.buffer, buffer_tell(objClient.buffer));
