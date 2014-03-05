//GetAButton(GamePadIndex); return true if A is pressed
index = argument0;
if(gamepad_is_connected(index)){
    return gamepad_button_check(index,gp_face3) or gamepad_button_check(index,gp_face2);
}
