function background_layer_sprite_get(bglayer)
{
	if !sprite_exists(layer_background_get_sprite(layer_background_get_id(layer_get_id(bglayer))))
		return spr_null
	else
		return layer_background_get_sprite(layer_background_get_id(layer_get_id(bglayer)));
}