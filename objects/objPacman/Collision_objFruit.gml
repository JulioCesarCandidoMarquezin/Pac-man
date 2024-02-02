audio_play_sound(soundEatingFruit, 10, false)
score += 1000
global.bonus = true
instance_destroy(other)
alarm[2] = room_speed * 15
