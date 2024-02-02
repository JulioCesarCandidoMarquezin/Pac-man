function srpOutside() {
    if (x < 0) x = room_width + sprite_xoffset;
    if (x > room_width) x = -sprite_width + sprite_xoffset;
    if (y < 0) y = room_height + sprite_yoffset;
    if (y > room_height) y = -sprite_height + sprite_yoffset;
}
