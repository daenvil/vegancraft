# Called by function dnv.acacia_gum:find_stripped_acacia(_line/_wide)
# @s = player who stripped acacia log/wood
# position = stripped acacia log/wood (or player position, if not found)

scoreboard players set @s dnv.found_acacia 1
loot spawn ~ ~ ~ loot dnv.acacia_gum:drop

execute if score dnv.dummy dnv.vegancraft matches 1 run scoreboard players add @s dnv.vxp 40
execute if score dnv.dummy dnv.vegancraft matches 1 run tag @s add dnv.vc.award_xp
execute if score dnv.dummy dnv.vegancraft matches 1 run schedule function dnv.vegancraft:award_xp 1t replace
execute if score dnv.dummy dnv.vegancraft matches 1 run advancement grant @s until dnv.vegancraft:acacia_gum/slime_ball