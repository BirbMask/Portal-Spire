draw_set_font(global.smallfont)
draw_set_halign(fa_center)
draw_set_colour(c_white)


// Left Side
draw_text(55, 3, "FPS: " + string(fps))
draw_text(150, 261, sprite_get_name(obj_player1.sprite_index))
draw_text(125, 239, room_get_name(room))
draw_text(125, 304, "IMAGE_SPEED: " + string(obj_player1.image_speed))
draw_text(125, 283, "IMAGE_INDEX: " + string(obj_player1.image_index))

draw_text(835, 239, "STATE: " + string(obj_player1.state))
draw_text(835, 261, "PLAYERX: " + string(obj_player1.x))
draw_text(835, 281, "PLAYERY: " + string(obj_player1.y)) 
draw_text(835, 304, "VSP: " + string(obj_player1.vsp)) 
draw_text(835, 323, "HSP: " + string(obj_player1.hsp)) 
