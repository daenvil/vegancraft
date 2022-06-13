# Called by dnv.vegancraft:food/utility/player_tick_real each time a player crafts a cake (i.e. uses the vanilla recipe)
# (This is just to take into account the possibility of a player crafting a vegan cake after a vanilla cake)

scoreboard players set @s dnv.crafted_cake 0
execute store result score @s dnv.vegan_milks run clear @s minecraft:milk_bucket{dnv.Vegan:1b} 0