///scr_friend_choose_state
scr_check_for_player();
if (alarm[0] <= 0) {
    state = choose(scr_friend_chase_state, scr_friend_idle_state);
    alarm[0] = room_speed*irandom_range(2,8);
    targetx = random(room_width);
    targety = random(room_height);
}
