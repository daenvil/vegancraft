# Called by function dnv.plant_wax:furnace/tick
# @s = Furnace marker
# position = Furnace marker
# Emulates vanilla furnace mechanics

# Reduce ingredient count:
item modify block ~ ~ ~ container.0 dnv.core:reduce_count

# Increase output count:
execute if data block ~ ~ ~ {Items:[{Slot:2b}]} run tag @s add dnv.plant_wax.output
execute if entity @s[tag=dnv.plant_wax.output] run item modify block ~ ~ ~ container.2 dnv.core:increase_count
execute unless entity @s[tag=dnv.plant_wax.output] run data modify block ~ ~ ~ Items append value {Slot:2b,id:"minecraft:honeycomb",Count:1b,tag:{display:{Name:'[{"translate":"dnv.plant_wax.item.plant_wax","italic":false,"fallback":"Plant Wax"}]'},dnv.Vegan:1b,CustomModelData:9261008}}

# Reset CookTime:
data modify block ~ ~ ~ CookTime set value 0s

# Count recipe for XP purposes ("bush_wax" is used as a counter for both recipes, since the two give the same xp):
execute store result score @s dnv.plant_wax.recipes_used run data get block ~ ~ ~ RecipesUsed."dnv.plant_wax:bush_wax"
scoreboard players add @s dnv.plant_wax.recipes_used 1
execute store result block ~ ~ ~ RecipesUsed."dnv.plant_wax:bush_wax" int 1 run scoreboard players get @s dnv.plant_wax.recipes_used

tag @s remove dnv.plant_wax.output
tag @s remove dnv.plant_wax.recipe_completed