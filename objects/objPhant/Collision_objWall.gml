hspeed = -hspeed
vspeed = -vspeed

if hspeed < 0 {
	image_index = 1
}
if hspeed > 0 {
	image_index = 3
}
if vspeed < 0 {
	image_index = 2
}
if vspeed > 0 {
	image_index = 4
}
