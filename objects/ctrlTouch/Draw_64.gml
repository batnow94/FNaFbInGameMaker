if tutorial>0 {
    if tutorialdelay>0 {
        tutorialdelay--;
    } else {
        tutorial-=0.05;
    }
    draw_set_alpha(tutorial);
} else {
    draw_set_alpha(0.5);
}
draw_set_colour(c_green);
if keyboard_check(vk_escape)||tutorial>0 {
    draw_rectangle(0,0,136,104,0);
}
if keyboard_check(vk_shift)||tutorial>0 {
    draw_rectangle(408,0,544,104,0);
}
if keyboard_check(vk_up)||tutorial>0 {
    draw_rectangle(136,0,408,104,0);
}
if keyboard_check(vk_down)||tutorial>0 {
    draw_rectangle(136,312,408,416,0);
}
if keyboard_check(vk_left)||tutorial>0 {
    draw_rectangle(0,104,181,312,0);
}
if keyboard_check(vk_right)||tutorial>0 {
    draw_rectangle(363,104,544,312,0);
}
if keyboard_check(vk_enter)||tutorial>0 {
    draw_rectangle(181,104,363,312,0);
}
draw_set_alpha(1);

