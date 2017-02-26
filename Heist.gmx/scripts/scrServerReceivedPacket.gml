///scrServerReceivedPacket(buffer, socket)
var buff = argument[0];
var socket = argument[1];
var ip = argument[2];
var port = argument[3];
var msgid = buffer_read(buff, buffer_u8);

switch(msgid)
{
    case netPing:
        var time = buffer_read(buff, buffer_u32);
        buffer_seek(buffer, buffer_seek_start,0);
        buffer_write(buffer, buffer_u8,netPing);
        buffer_write(buffer, buffer_u32,time);
        network_send_packet(socket, buffer, buffer_tell(buffer));
        
        var player = ds_list_find_index(ipList,ip)+1;
        mTimeout[player] = 300;
    break;
    case netInitialRequest:
        var pVersion = buffer_read(buff, buffer_string);
        if(pVersion != version)
        {
            errMsg = "Client version did not match host.#Returning to main menu."
            alarm[0] = 180;
            scrSendError();
        }
    break;
    case netReady:
        var pReady = buffer_read(buff, buffer_bool);
        var player = ds_list_find_index(ipList,ip)+1;
        mReady[player] = pReady;
        scrSendReadyUpdate();
    break;
}
