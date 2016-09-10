///scr_jump_state
scr_get_input();

//get the direction
dir = point_direction (0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0) {
    len = 0;
    } else {
    len = spd;
    }
    
//get the hspd and vspd
hspd = lengthdir_x (len,dir);
vspd = lengthdir_y (len, dir);


//get the movement
phy_position_x += hspd;
phy_position_y += vspd;


//get the animation
image_speed = .3;


//horizontal animation
if (hspd>0) {
sprite_index = spr_player_jump_right;
} else if (hspd<0) {
sprite_index = spr_player_jump_left;
}

//vertical animation
if (vspd>0) {
sprite_index = spr_player_jump;
} else if (vspd<0) {
sprite_index = spr_player_jump_up;
}
