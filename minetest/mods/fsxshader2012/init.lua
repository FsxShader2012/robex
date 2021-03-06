-- FsxShader2012 Block Test Mod ----------- Copyright Robin Kuhn 2015


-- Define FsxShader2012 node
minetest.register_node("fsxshader2012:fsxshader2012", {
	description = "FsxShader2012 Block",
	tile_images = {"fsxshader2012.bmp"},
	groups = {stone=2, cracky=3},
	drop = {
		items = {
			{
				items = {'"default:diamond" 4'},
			},
			{
				items = {'"default:mese_crystal" 5'},
			}
		}
	},
})


-- Define FsxShader2012_rainbow node
minetest.register_node("fsxshader2012:fsxshader2012_rainbow", {
	description = "FsxShader2012 Rainbow Block",
	tile_images = {"fsxshader2012_rainbow.png"},
	groups = {stone=2, cracky=3, fall_damage_add_percent=-100, bouncy=150},
	drop = '"fsxshader2012:fsxshader2012" 4'
})


-- Define crafting recipe for FsxShader2012 node
minetest.register_craft({
	output = '"fsxshader2012:fsxshader2012" 5',
	recipe = {
		{'default:mese_crystal', 'default:diamond', 'default:mese_crystal', ''},
		{'default:diamond', 'default:mese_crystal', 'default:diamond', ''},
		{'default:mese_crystal', 'default:diamond', 'default:mese_crystal', ''},
		}
})


-- Define crafting recipe for _rainbow node
minetest.register_craft({
	type = "shapeless",
	output = "fsxshader2012:fsxshader2012_rainbow",
	recipe = {"fsxshader2012:fsxshader2012", "fsxshader2012:fsxshader2012", "fsxshader2012:fsxshader2012", "fsxshader2012:fsxshader2012"}
})