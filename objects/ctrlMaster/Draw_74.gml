/// @description Draw application_surface with shaders
if ingame&&graphics>0&&nighttime shader_set(shdNight);
draw_surface(application_surface,0,0);
if ingame&&graphics>0&&nighttime shader_reset();

