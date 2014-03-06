///PlayerDraw(color blend)
if aiming and arrows>0{
draw_sprite_ext(sprArrow,0,x+lengthdir_x(8,aim_dir),y-16+lengthdir_y(16,aim_dir),1,1,aim_dir,argument0,1);
}

//var yscale = image_yscale*(1+(abs(vspeed)/15))*(1+(.1*(-sin(step/(room_speed/8)*pi))));
var yscale = image_yscale*(1+(min(1,power(abs(vspeed)/jumpSpeed,2))*1))*(1+(.1*(-sin(step/(room_speed/8)*pi))));

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*(1+(abs(hspeed)/horzSpeed/2)),
    yscale,angle+image_angle,argument0,image_alpha);

if arrows>0 and (!aiming or stun) and !dead{    
draw_sprite_ext(sprArrow,0,x+lengthdir_x(32,angle+90),y-((sprite_yoffset)*yscale)-8,.5,1,90,argument0,1);
//var yscale = image_yscale*(1+(min(1,power(abs(vspeed)/jumpSpeed,2))*1))*(1+(.1*(-sin(step/(room_speed/8)*pi))));
}
