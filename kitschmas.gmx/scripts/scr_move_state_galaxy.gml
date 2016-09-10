///scr_move_state
//interact state
scr_get_input();
if(interact_key) {
    image_speed = 0;
    if(collision_point(x,y-16,obj_speaker,0,1)>0) {
    with(collision_point(x,y-16,obj_speaker,0,1))
        {
            event_perform(ev_other, ev_user0);
            }
    }
}
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
image_speed = .5;
if (len == 0) {
sprite_index = spr_player_galaxy;
}

//vertical animation
if (vspd>0) {
sprite_index = spr_player_galaxy;
} else if (vspd<0) {
sprite_index = spr_player_galaxy;
}

//horizontal animation
if (hspd>0) {
sprite_index = spr_player_galaxy_right;
} else if (hspd<0) {
sprite_index = spr_player_galaxy_left;
}
