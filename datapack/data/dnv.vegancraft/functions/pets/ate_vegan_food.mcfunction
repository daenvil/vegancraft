# Called by dnv.omni_pets:dropped_item_consumed if item was tagged as vegan
# @s = item entity
# This is just to grant advancements if needed

execute if score dnv.dummy dnv.pet_type matches 1 if entity @s[nbt={Item:{id:"minecraft:cooked_beef"}}] run scoreboard players set dnv.dummy dnv.food_found 3
execute if score dnv.dummy dnv.pet_type matches 2 if entity @s[nbt={Item:{id:"minecraft:cod"}}] run scoreboard players set dnv.dummy dnv.food_found 4
scoreboard players set dnv.dummy dnv.player_found 0
execute if score dnv.dummy dnv.food_found matches 3.. as @a[sort=nearest] if score dnv.dummy dnv.player_found matches 0 run function dnv.vegancraft:pets/search_feeder
scoreboard players set dnv.dummy dnv.food_found 2