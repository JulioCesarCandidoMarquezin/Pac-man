if sprite_index == sprPacmanDie {
	direction = 0
	image_speed = 2
	x = xstart
	y = ystart
	sprite_index = sprPacmanRight
	image_index = 0
	
	global.golpe = false
	audio_play_sound(soundBegin, 1, false)
	instance_deactivate_object(objPhant)
}