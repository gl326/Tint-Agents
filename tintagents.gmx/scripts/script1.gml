//GetAnalogStick(GamepadIndex); Gets the input of the gamepad at the specified index
argument0 = index;

if(gamepad_is_connected(index)){
    var xCoord = gamepad_axis_value(index, gp_axislh);
    var yCoord = gamepad_axis_value(index, gp_axislv);
    
    if(abs(yCoord)>.1 or abs(xCoord) >.1){
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
