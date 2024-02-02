#region Desenhar pontuação
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fntController)
draw_text(32, 16, "Pontos: " + string(score))
draw_text(room_width / 2, 16, "Vidas: ")
#endregion

#region Desenhar vidas
for (i = 0; i < lives; i++) {
	draw_sprite_stretched(sprPacmanRight, 1, room_width / 2 + string_width("Vidas: ") + i*36, 10, 32, 32)
}
#endregion

#region Desenhar preparo
if audio_is_playing(soundBegin) {
	draw_set_color(c_yellow)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fntReady)
	draw_text(room_width / 2, room_height / 2, "Ready")
}
#endregion

#region Desenhar bôbus
if global.bonus {
	draw_sprite(sprFruit, 0, room_width - 64, 0)
}
#endregion

#region Desenhar Game Over
if lives == 0 {
	draw_set_color(c_red)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fntReady)
	draw_text(room_width / 2, room_height / 2, "Game Over")
}
#endregion