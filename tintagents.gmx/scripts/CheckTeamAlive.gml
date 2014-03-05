//CheckTeamAlive() returns -1 if both teams are alive, -2 if no one is alive
// 0 if blue team, 1 if red team

//var playerList = ds_list_create();

var dead1 = 0;
var dead0 = 0;
var total = 0;
with(objPlayer){
    //ds_list_add(playerList,object_index);
    total++;
    if(dead){
        if( team == 1){
            dead1++;
        } else {
            dead0++;
        }
    }
}
/*
for(var i=0;i<ds_list_size(playerList);i++){
    var player = ds_list_find_value(playerList,i);
    if(player.dead){
        if( player.team == 1){
            dead1++;
        } else {
            dead0++;
        }
    }
}
*/
if(dead1+dead0-total == 0){ // everyone's dead
    return -2;
}
if(dead1 - total/2 == 0){
    return 0;
}
if(dead0 - total/2 == 0){
    return 1;
}
return -1;

