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


//get the animation
image_speed = .1;
if (len == 0) {
image_index = 0;
}


//horizontal animation
if (hspd>0) {
sprite_index = spr_player_run;
} else if (hspd<0) {
sprite_index = spr_player_run_left;
}
