if audio_is_playing(soundIntermission) {
	audio_stop_sound(soundIntermission)
}
audio_play_sound(soundIntermission, 7, false)

score += 500

global.power = true

with(objPhant) {
	if sprite_index != sprFearPhant {
		sprite_start = sprite_index
	}
	
	sprite_index = sprFearPhant
	image_speed = 0
	
	vel = 2
	speed = 2
}
instance_destroy(other)

fear_time = room_speed * audio_sound_length(soundIntermission)
exiting_fear_time = fear_time + (3 * room_speed)
alarm[0] = fear_time
alarm[1] = exiting_fear_time