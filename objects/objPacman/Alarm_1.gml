if global.power {
    with(objPhant) {
        if sprite_index == sprFearPhant {
            sprite_index = sprite_start;
            image_speed = 0;
            vel = 4;
            speed = 4;

            var divisor = 64;
            vel = clamp(vel, 1, divisor);
			
            var offset_x = x mod divisor;
            var offset_y = y mod divisor;

            x += (offset_x > divisor / 2) ? divisor - offset_x : -offset_x;
            y += (offset_y > divisor / 2) ? divisor - offset_y : -offset_y;
        }
    }
}

global.power = false;