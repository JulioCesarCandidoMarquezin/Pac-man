if other.sprite_index == sprFearPhant {
	score += 200
	with(other) {
		audio_play_sound(soundEatingGhost, 5, false)
		x = xstart
		y = ystart
		vel = 4
		speed = vel
		image_speed = 0
		sprite_index = sprite_start
	}
} else {
	audio_play_sound(soundPacmanDie, 3, false)
	global.golpe = true
	speed = 0
	sprite_index = sprPacmanDie
	image_speed = 1
	lives -= 1
	objController.iniciado = false
}