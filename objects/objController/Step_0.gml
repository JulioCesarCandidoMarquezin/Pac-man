#region Ativar os inimigos depois da música
if !audio_is_playing(soundBegin) && iniciado {
	instance_activate_object(objPhant)
}
#endregion

#region Mais 1 vida se score for divisivel por 10000
if(score%10000>=pontuacaoProximaVida) {
	pontuacaoProximaVida = score%10000;
} else {
	lives++;
	pontuacaoProximaVida = score%10000;
}
#endregion

#region Destuir tudo quando morre
if lives < 1 {
	instance_destroy(objPhant)
	instance_destroy(objPacman)
	instance_destroy(objFruit)
	instance_destroy(objPointBall)
	instance_destroy(objSuperBall)
}
#endregion

#region Verifica se os pontos foram coletados ou o Pacman morreu
if instance_number(objPointBall) == 0 && instance_number(objSuperBall) == 0 && lives > 0 {
	if room_next(room) != -1 {
		audio_stop_all()
		room_goto_next()
	} else {
		audio_stop_all()
		room_goto(rmGameOver)
		instance_destroy(self)
	}
}
#endregion