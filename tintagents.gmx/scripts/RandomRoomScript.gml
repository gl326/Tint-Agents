//RandomRoomScript(index of current room);
index = argument0;

var chooseIndex = global.roomArr[floor(random(array_length_1d(global.roomArr)))];
while(chooseIndex == index or chooseIndex == titleScreen or chooseIndex == initRoom){
    chooseIndex = global.roomArr[floor(random(array_length_1d(global.roomArr)))];
}

room_goto(chooseIndex);
