//RandomRoomScript(index of current room);
index = argument0;

var chooseIndex = global.roomArr[floor(random(array_length_1d(global.roomArr)))];
while(chooseIndex != index and chooseIndex != global.startIndex){
    chooseIndex = global.roomArr[floor(random(array_length_1d(global.roomArr)))];
}
return chooseIndex;

