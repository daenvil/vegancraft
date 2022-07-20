# Called by dnv.omni_pets:check_if_pet_food
# @s = item checker armor stand

execute if entity @s[nbt={HandItems:[{tag:{dnv.Vegan:1b}}]}] run scoreboard players set dnv.dummy dnv.food_found 2
execute unless score dnv.dummy dnv.food_found matches 2 if entity @s[nbt={HandItems:[{tag:{dnv.Vegan:0b}}]}] run scoreboard players set dnv.dummy dnv.food_found 3
execute unless score dnv.dummy dnv.food_found matches 2..3 if predicate dnv.vegancraft:mainhand_check_pet_food run scoreboard players set dnv.dummy dnv.food_found 2
execute if score dnv.dummy dnv.food_found matches 3 run scoreboard players set dnv.dummy dnv.food_found 1