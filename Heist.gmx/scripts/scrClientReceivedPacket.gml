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
    case netState:
        state = buffer_read(buff, buffer_u8);
        //the initial state wasn't lasting a full step, so the step event
            //wasn't seeing it to change rooms
        if(state == stateInitial)
        {
            room_goto(rmGame);
        }
    break;
    case netRoom:
        var type = buffer_read(buff, buffer_u8);
        var rmx = buffer_read(buff, buffer_u16);
        var rmy = buffer_read(buff, buffer_u16);
        var rm = instance_create(rmx,rmy,roomType[type]);        
    break;
    case netPlayer:
        var px = buffer_read(buff, buffer_u16);
        var py = buffer_read(buff, buffer_u16);
        var pNum = buffer_read(buff, buffer_u8);
        theif[pNum] = instance_create(px,py,objPlayer);
        theif[pNum].player = pNum;
    break;
    case netMovement:
        var p = buffer_read(buff, buffer_u8);
        var px = buffer_read(buff, buffer_u16);
        var py = buffer_read(buff, buffer_u16);
        mChosenSpace[p] = instance_position(px,py,objSpace);
        //theif[p].x = px;
        TweenFire(theif[p], x__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*p, 30, theif[p].x, px);
        //theif[p].y = py;
        TweenFire(theif[p], y__, EaseInOutQuad, TWEEN_MODE_ONCE, false, 30*p, 30, theif[p].y, py);
        
        theif[p].currentSpace = mChosenSpace[p];
    break;
}
