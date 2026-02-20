// Set drawing properties for the UI.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main);
draw_set_color(c_white);

// --- Draw Score ---
//We need to add the variable name for the score inside the parentheses 
draw_text(20, 20, "Score: " + string(scored));

// --- Draw Lives ---
//We need to add the variable name for the lives inside the parentheses 
draw_set_halign(fa_right); // Align to the right for the other side of the screen.
draw_text(room_width - 20, 20, "Lives: " + string(lives_left));