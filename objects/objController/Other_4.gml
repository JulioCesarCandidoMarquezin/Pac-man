if room == Room1 exit

audio_play_sound(soundBegin, 1, false)
instance_deactivate_object(objPhant)

global.power = 0
global.golpe = false
global.bonus = false

alarm[0] = room_speed * 10