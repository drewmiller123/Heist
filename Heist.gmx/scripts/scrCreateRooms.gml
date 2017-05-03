///scrCreateRooms()
    //creates all rooms and hallways
    
//create rooms
var rm0 = instance_create(room_width/2, room_height*7/8, objRoom3Down);
scrSendRoom(rm0);

var rm1 = instance_create(room_width*3/8, room_height*11/16, objRoom3Right);
scrSendRoom(rm1);
var rm2 = instance_create(room_width*5/8, room_height*11/16, objRoom3Left);
scrSendRoom(rm2);

var rm3 = instance_create(room_width/4, room_height/2, objRoom3Right);
scrSendRoom(rm3);
var rm4 = instance_create(room_width/2, room_height/2, objRoom4);
scrSendRoom(rm4);
var rm5 = instance_create(room_width*3/4, room_height/2, objRoom3Left);
scrSendRoom(rm5);

var rm6 = instance_create(room_width*3/8, room_height*5/16, objRoom3Right);
scrSendRoom(rm6);
var rm7 = instance_create(room_width*5/8, room_height*5/16, objRoom3Left);
scrSendRoom(rm7);

var rm8 = instance_create(room_width/2, room_height*1/8, objRoom1);
scrSendRoom(rm8);

//create hallways
var hw0 = instance_create(room_width/2, room_height*11/16, objHallway);
scrSendRoom(hw0);

var hw1 = instance_create(room_width*3/8, room_height/2, objHallway);
scrSendRoom(hw1);
var hw2 = instance_create(room_width*5/8, room_height/2, objHallway);
scrSendRoom(hw2);

var hw3 = instance_create(room_width/2, room_height*5/16, objHallway);
scrSendRoom(hw3);
