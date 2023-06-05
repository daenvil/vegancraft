# Called by function dnv.omni_pets:cat/tick when a player holding valid food is near the cat
# @s = player

scoreboard players add dnv.dummy dnv.cat_player_counter 1
execute unless score dnv.dummy dnv.cat_player_counter matches 2.. run tag @s add dnv.cat_target