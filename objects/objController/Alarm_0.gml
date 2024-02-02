if instance_number(objPacman) {
	instance_create_layer(objPacman.xstart, objPacman.ystart, "top", objFruit)
	alarm[0] = room_speed * 30
}