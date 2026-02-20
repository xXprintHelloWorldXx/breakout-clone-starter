// This code runs every frame.

// Check if there are any bricks left in the room.
// The function instance_number() is a clear way to count instances.
if (instance_number(obj_brick) == 0)
if (instance_number(obj_brick_1) == 0){
if (instance_number(obj_brick_2) == 0){
if (instance_number(obj_brick_3) == 0){
    // If no bricks exist, the player wins!
    // For now, we'll just restart the room.
    // A good extension is to show a win message or go to the next level.
    room_restart();
}

// Check if the ball has fallen off the bottom of the screen.
if (instance_exists(obj_ball) && obj_ball.y > room_height + 40) {
    // Player loses a life.
    audio_play_sound(sfx_lose_life, 1, false);
    lives_left -= 1;
    instance_destroy(obj_ball); // Destroy the ball.

    // Check if the game is over.
    if (lives_left <= 0) {
        // Game Over - restart the whole game.
        game_restart();
    } else {
        // If not game over, create a new ball to continue playing.
        instance_create_layer(room_width/2, room_height/2, "Instances", obj_ball);
    }
}
