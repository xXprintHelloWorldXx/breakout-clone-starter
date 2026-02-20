vspeed = -vspeed;
instance_destroy(other);
obj_game.scored +=300;
audio_play_sound(sfx_break, 1, false);