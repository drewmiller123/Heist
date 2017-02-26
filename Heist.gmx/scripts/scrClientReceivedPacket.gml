///scrClientReceivedPacket(buffer)
var buff = argument[0];
buffer_seek(buff, buffer_seek_start, 0);
var msgid = buffer_read(buff, buffer_u8);

switch(msgid)
{
    case netPing:
        var time = buffer_read(buff, buffer_u32);
        ping = current_time - time;
        serverTimeout = 300;
    break;
    case netReady:
        mReady[0] = buffer_read(buff, buffer_bool);
        mReady[1] = buffer_read(buff, buffer_bool);
        mReady[2] = buffer_read(buff, buffer_bool);
        mReady[3] = buffer_read(buff, buffer_bool);
    break;
    case netError:
        errMsg = buffer_read(buff, buffer_string);
        alarm[11] = 180;
    break;
    case netNumClients:
        numClients = buffer_read(buff, buffer_u8);
    break;
}
