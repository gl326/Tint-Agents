//GetAnalogStick(GamepadIndex); Gets the input of the gamepad at the specified index
index = argument0;

if(gamepad_is_connected(index)){
    var xCoord = gamepad_axis_value(index, gp_axislh);
    var yCoord = gamepad_axis_value(index, gp_axislv);
    
    if(abs(yCoord)>.2 or abs(xCoord) >.2){
        yCoord = yCoord * -1;
        var unit = sqrt(yCoord*yCoord + xCoord * xCoord);
        yCoord = yCoord / unit;
        xCoord = xCoord / unit;
        val[0] = xCoord;
        val[1] = yCoord;
        return val
    }
}
val[0] = 0;
val[1] = 0;
return val;
