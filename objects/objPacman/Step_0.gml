if (global.golpe) || audio_is_playing(soundBegin) exit

if (
keyboard_check_pressed(vk_left)
||
keyboard_check_pressed(vk_right)
||
keyboard_check_pressed(vk_up)
||
keyboard_check_pressed(vk_down)
) objController.iniciado = true

if keyboard_check(vk_right) && place_free(x + 1, y) && place_snapped(64, 64){
	direction = 0
	sprite_index = sprPacmanRight
	speed = vel
}

if keyboard_check(vk_up) && place_free(x, y - 1) && place_snapped(64, 64){
	direction = 90
	sprite_index = sprPacmanUp
	speed = vel;
}

if keyboard_check(vk_left) && place_free(x - 1, y) && place_snapped(64, 64){
	direction = 180
	sprite_index = sprPacmanLeft
	speed = vel;
}

if keyboard_check(vk_down) && place_free(x, y + 1) && place_snapped(64, 64){
	direction = 270
	sprite_index = sprPacmanDown
	speed = vel;
}
