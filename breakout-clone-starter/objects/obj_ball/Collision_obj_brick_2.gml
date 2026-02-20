vspeed = -vspeed;
instance_destroy(other);
obj_game.scored +=500;
audio_play_sound(sfx_break, 1, false);