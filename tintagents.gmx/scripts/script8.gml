//InitializeRooms()
global.roomArr[0] = room_first;
var i=1;
while (true){
    var roomAdd = room_next(roomArr[i-1]);
    if(roomAdd == -1){
        break;
    }
    global.roomArr[i] = roomAdd;
    i+=1;    
}
