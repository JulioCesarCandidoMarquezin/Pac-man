if global.bonus {
	score_point = 400
} else {
	score_point = 200 
}

if global.golpe {
	speed = 0
	hspeed = 0
	vspeed = 0
	visible = false
	sprite_index = sprite_start
	image_speed = 0
	x = xstart
	y = ystart
	exit
} else {
    visible = true;
}

if place_snapped(64, 64) {
	if hspeed == 0 {
		if random(3) < 1 && place_free(x - 1, y) {
			hspeed = -vel
			vspeed = 0
			image_index = 1
		}
		if random(3) < 1 && place_free(x + 1, y) {
			hspeed = vel
			vspeed = 0
			image_index = 3
		}
	}
	if vspeed == 0 {
		if random(3) < 1 && place_free(x, y - 1) {
			hspeed = 0
			vspeed = -vel
			image_index = 2
		}
		if random(3) < 1 && place_free(x, y + 1) {
			hspeed = 0
			vspeed = vel
			image_index = 4
		}
	}
}
	