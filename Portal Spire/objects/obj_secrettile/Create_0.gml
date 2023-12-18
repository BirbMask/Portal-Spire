alpha = 1
depth = -8
tiles[0] = array_create(0)
tiles[1] = array_create(0)
tiles[2] = array_create(0)
for (var i = 0; i < 3; i++)
{
    var lay_id = layer_get_id(concat("Tiles_Secret", (i + 1)))
    tilemap_sprite[i] = -4
    if (lay_id != -1)
    {
        var map_id = layer_tilemap_get_id(lay_id)
        var ts = tilemap_get_tileset(map_id)
        var t = -4
	switch ts
		{
			case ts_ruin1:
				t = spr_tile_ruin1
				break
			case ts_ruin2:
				t = spr_tile_ruin2
				break
//			case tileset_tile_beachtest:
//				t = sprite_tile_beachtest
//				break
//			case tileset_tile_beachtest2:
//				t = sprite_tile_beachtest2
//				break
//			case tileset_tile_beachtest2dark:
//				t = sprite_tile_beachtest2dark
//				break
			case ts_chateau1:
				t = spr_tile_chateau1
				break
			case ts_desert:
				t = spr_tile_desert
				break
			case ts_ufo:
				t = spr_tile_ufo
				break
			case ts_cavern:
				t = spr_tile_cavern
				break
			case ts_dungeon:
				t = spr_tile_dungeon1
				break
			case ts_dungeon2:
				t = spr_tile_dungeon2
				break
			case ts_dungeon3:
				t = spr_tile_dungeon3
				break
			case ts_entrance:
				t = spr_tile_entrance
				break
			case ts_tower:
				t = spr_tile_tower
				break
			case ts_farm:
				t = spr_tile_farm
				break
			case ts_forest1:
				t = spr_tile_forest1
				break
			case ts_freezer:
				t = ts_freezer
				break
			case ts_freezer2:
				t = spr_tile_freezer2
				break
			case ts_wasteyard:
				t = spr_tile_wasteyard1
				break
			case ts_wasteyardinterior:
				t = spr_tile_wasteyard2
				break
			case ts_wasteyardmine:
				t = spr_tile_wasteyardmine
				break
			case ts_interior:
				t = spr_tile_interior
				break
//			case tile_factory2:
//				t = tile_factory2424
				break
			case ts_kidsparty:
				t = spr_tile_kidsparty
				break
//			case tileset_tile_kungfu:
//				t = sprite_tile_kungfu
//				break
//			case tileset_tile_kungfucity:
//				t = tile_kunfucity
//				break
//			case tileset_tile_kungfustructure:
//				t = sprite_tile_kungfustructure
//				break
//			case tile_mansion2:
//				t = spr_mansiontile2
//				break
//			case tile_castle_tileset:
//				t = tile_castle
				break
			case ts_space1:
				t = spr_tile_space1
				break
/*			case tileset_tile_spaceback1:
				t = sprite_tile_spaceback1
				break
			case tileset_tile_space2:
				t = sprite_tile_space2
				break
			case tileset_pinball1:
				t = tile_pinball1
				break
			case tileset_pinball2:
				t = tile_pinball2
				break
			case tileset_pinball3:
				t = tile_pinball3
				break
		case spr_tile_war1:
				t = sprite_tile_war1
				break
			case tileset_tile_war2:
				t = sprite_tile_war2
				break
			case tileset_tile_war3:
				t = sprite_tile_war3
				break
			case tileset_tile_war4:
				t = sprite_tile_war4
				break
			case tileset_tile_war1shadow:
				t = sprite_tile_war1shadow
				break
			case tileset_tile_space2shadow:
				t = sprite_tile_space2shadow
				break
			case tileset_tile_citycarnival:
				t = sprite_tile_citycarnival
				break
			case tileset_tile_citydark:
				t = sprite_tile_citydark
				break*/
            case ts_medieval:
                t = spr_tile_medieval
                break
            case ts_medieval4:
                t = spr_tile_medievalcheese
                break
            case ts_secret:
                t = spr_tile_secret
                break
            case ts_medieval3:
                t = spr_tile_medievalinterior
                break
            case ts_medieval2:
                t = spr_tile_medievallibrary
                break

        }

        tilemap_sprite[i] = t
        var _w32 = (sprite_get_width(t) / 32)
        for (var yy = 0; yy < image_yscale; yy++)
        {
            for (var xx = 0; xx < image_xscale; xx++)
            {
                var _x = (x + (xx * 32))
                var _y = (y + (yy * 32))
                var data = tilemap_get_at_pixel(map_id, _x, _y)
                var _id = tile_get_index(data)
                var xi = 0
                var yi = 0
                for (var j = 0; j < _id; j++)
                {
                    xi++
                    if (xi >= _w32)
                    {
                        xi = 0
                        yi++
                    }
                }
                array_push(tiles[i], [_x, _y, (xi * 32), (yi * 32)])
                data = tile_set_empty(data)
                tilemap_set_at_pixel(map_id, data, _x, _y)
            }
        }
    }
}
trace(tilemap_sprite)
if (array_length(tiles[0]) <= 0 && array_length(tiles[1]) <= 0 && array_length(tiles[2]) <= 0)
    instance_destroy()

