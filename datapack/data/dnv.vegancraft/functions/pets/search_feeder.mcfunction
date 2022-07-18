# Called by dnv.vegancraft:pets/ate_vegan_food
# @s = player

execute unless entity @s[tag=dnv.id] run function dnv.core:id_player
execute if score dnv.dummy dnv.food_found matches 3 if score @s dnv.player_uuid = dnv.dummy dnv.player_uuid run function dnv.vegancraft:food/pets/wolf_feeder_found
execute if score dnv.dummy dnv.food_found matches 4 if score @s dnv.player_uuid = dnv.dummy dnv.player_uuid run function dnv.vegancraft:food/pets/cat_feeder_found