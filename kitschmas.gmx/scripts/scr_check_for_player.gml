///scr check for player
if (instance_exists(obj_player)) {
    var dis = point_distance(x,y,obj_player.x,obj_player.y);
    if (dis < sight) {
        state = scr_friend_chase_state;
        targetx = obj_player.x;
        targety = obj_player.y;
    } else {
        state = scr_friend_choose_state;
    } 
} else {
    state = scr_friend_choose_state;        
    }
