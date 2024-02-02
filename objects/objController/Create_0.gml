audio_play_sound(soundBegin, 1, false)
instance_deactivate_object(objPhant)

iniciado = false
pontuacaoProximaVida = 0

lives = 3
score = 0
global.power = false
global.bonus = false
global.golpe = false

alarm[0] = room_speed * 10