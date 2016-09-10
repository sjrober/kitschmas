///friend wander state
scr_check_for_player();
if (instance_exists(obj_player)) {
    phy_position_x += sign(targetx-x)*spd;
    phy_position_y += sign(targety-y)*spd;
}
