# Called through function tag #dnv.core:furnace/cook_timer_complete by function dnv.core:furnace/marker_tick
# @s = Furnace marker
# position = Furnace marker
# Checks if custom recipes were completed:

# Dead bush
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:dead_bush"}]} run tag @s add dnv.plant_wax.recipe_completed

# Jungle leaves
execute unless entity @s[tag=dnv.plant_wax.recipe_completed] if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:jungle_leaves"}]} run tag @s add dnv.plant_wax.recipe_completed

execute if entity @s[tag=dnv.plant_wax.recipe_completed] run function dnv.plant_wax:furnace/recipe_completed

# Reset cook timer:
scoreboard players set @s dnv.cook_time -1