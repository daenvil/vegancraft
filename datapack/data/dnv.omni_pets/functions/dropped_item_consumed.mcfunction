# Called by dnv.omni_pets:dropped_item_found if item belongs to #dnv.omni_pets:pet_foods
# @s = item entity
# at @s
# Reduces item count by 1, stores player UUID, and produces eating particles

# Player storage:
data modify storage dnv.omni_pets:player UUID set from entity @s Thrower
execute store result score dnv.dummy dnv.player_uuid run data get entity @s Thrower[0]

# Plant-based Foods datapack integration:
execute if score dnv.dummy dnv.vegancraft matches 1 if entity @s[nbt={Item:{tag:{dnv.Vegan:1b}}}] run function dnv.vegancraft:pets/ate_vegan_food

# Count reduction:
execute store result score dnv.dummy dnv.item_count run data get entity @s Item.Count
scoreboard players remove dnv.dummy dnv.item_count 1
execute store result entity @s Item.Count double 1 run scoreboard players get dnv.dummy dnv.item_count

particle minecraft:item minecraft:chicken ~ ~ ~ 0.16 0.16 0.16 0.05 6