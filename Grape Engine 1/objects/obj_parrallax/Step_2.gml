var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
layer_x("Assets_BG", (_cam_x * 0.2))
layer_y("Assets_BG", (_cam_y * 0.2))
layer_x("Backgrounds_1", (bg_1xoffset + (_cam_x * 0.18)))
layer_y("Backgrounds_1", (bg_1yoffset + (_cam_y * 0.18)))
layer_x("Backgrounds_2", (bg_2xoffset + (_cam_x * 0.19)))
layer_y("Backgrounds_2", (bg_2yoffset + (_cam_y * 0.19)))
layer_x("Backgrounds_3", (_cam_x * 0.2))
layer_y("Backgrounds_3", (_cam_y * 0.2))
layer_x("Backgrounds_Ground1", (_cam_x * 0.2))
layer_x("Backgrounds_Ground2", (_cam_x * 0.18))
layer_x("Backgrounds_Ground3", (_cam_x * 0.16))
layer_x("Backgrounds_H1", (_cam_x * 0.11))
layer_y("Backgrounds_H1", _cam_y)
layer_x("Backgrounds_sky", (_cam_x * 0.25))
layer_y("Backgrounds_sky", (_cam_y * 0.25))
layer_x("Backgrounds_sky2", _cam_x)
layer_y("Backgrounds_sky2", _cam_y)
layer_x("Backgrounds_still1", ((bg_still1xoffset + _cam_x) - clamp((_cam_x * (0.15 * (960 / room_width))), 0, (sprite_get_width(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 960))))
layer_y("Backgrounds_still1", ((bg_still1yoffset + _cam_y) - clamp((_cam_y * (0.15 * (540 / room_height))), 0, (sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 540))))
layer_x("Backgrounds_still2", ((bg_still2xoffset + _cam_x) - clamp((_cam_x * (0.25 * (960 / room_width))), 0, (sprite_get_width(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 960))))
layer_y("Backgrounds_still2", ((bg_still2yoffset + _cam_y) - clamp((_cam_y * (0.25 * (540 / room_height))), 0, (sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")))) - 540))))
layer_x("Backgrounds_stillscroll", (((bg_still1xoffset + bg_scrollx) + _cam_x) - clamp((_cam_x * (0.15 * (960 / room_width))), 0, (sprite_get_width(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillscroll")))) - 960))))
layer_y("Backgrounds_stillscroll", (((bg_still1yoffset + bg_scrolly) + _cam_y) - clamp((_cam_y * (0.15 * (540 / room_height))), 0, (sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillscroll")))) - 540))))
layer_x("Backgrounds_stillH1", (bg_stillH1xoffset + (_cam_x * 0.25)))
layer_y("Backgrounds_stillH1", (bg_stillH1yoffset + (_cam_y - clamp((_cam_y * (0.15 * (540 / room_height))), 0, (sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillH1")))) - 540)))))
layer_x("Backgrounds_stillH2", (bg_stillH2xoffset + (_cam_x * 0.25)))
layer_y("Backgrounds_stillH2", (bg_stillH2yoffset + (_cam_y - clamp((_cam_y * (0.15 * (540 / room_height))), 0, (sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_stillH2")))) - 540)))))
layer_x("Backgrounds_scroll", (((_cam_x * 0.25) + bg_scrollx) + bg_scrollxoffset))
layer_y("Backgrounds_scroll", (((_cam_y * 0.25) + bg_scrolly) + bg_scrollyoffset))
bg_scrollx += layer_get_hspeed("Backgrounds_scroll")
bg_scrolly += layer_get_vspeed("Backgrounds_scroll")
bg_scrollx += layer_get_hspeed("Backgrounds_stillscroll")
bg_scrolly += layer_get_vspeed("Backgrounds_stillscroll")
layer_x("Backgrounds_scroll2", (((_cam_x * 0.25) + bg_scroll2x) + bg_scroll2xoffset))
layer_y("Backgrounds_scroll2", (((_cam_y * 0.25) + bg_scroll2y) + bg_scroll2yoffset))
bg_scroll2x += layer_get_hspeed("Backgrounds_scroll2")
bg_scroll2y += layer_get_vspeed("Backgrounds_scroll2")
layer_x("Foreground_1", (_cam_x * 0.35))
layer_y("Foreground_1", (_cam_y * 0.35))
layer_x("Foreground_Ground1", (_cam_x * 0.15))
layer_y("Foreground_Ground1", (room_height - sprite_get_height(layer_background_get_sprite(layer_background_get_id(layer_get_id("Foreground_Ground1"))))))

var ix = (camera_get_view_width(view_camera[0]) / obj_camera.original_cam_width)
var iy = (camera_get_view_height(view_camera[0]) / obj_camera.original_cam_height)
for (var i = 0; i < array_length(backgrounds); i++)
{
	var n = backgrounds[i]
	var lay_id = layer_background_get_id(layer_get_id(n))
	layer_background_xscale(lay_id, ix)
	layer_background_yscale(lay_id, iy)
}
