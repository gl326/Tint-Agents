//returns the number of players
var count = 0;
for(var i=0;i<array_length_1d(global.gp);i++){
    if(global.gp[i]){
        count++;
    }
}
if(count <4){
    return 2;
}
return 4;
