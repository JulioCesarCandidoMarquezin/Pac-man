if audio_is_playing(soundIntermission) {
	audio_stop_sound(soundIntermission)
}
audio_play_sound(soundIntermission, 7, false)

score += 500

global.power = true
var protect = true

with(objPhant) {
	if sprite_index != sprFearPhant {
		sprite_start = sprite_index
		hspeed_start = hspeed
		vspeed_start = vspeed
	}
	
	sprite_index = sprFearPhant
	image_speed = 0
	
	vel = 2
	speed = 2
}
instance_destroy(other)

alarm[0] = room_speed * audio_sound_length(soundIntermission)