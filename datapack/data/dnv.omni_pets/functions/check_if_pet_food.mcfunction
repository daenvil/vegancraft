# Called by dnv.omni_pets:dropped_item_found
# @s = item checker armor stand marker
# at ticked animal position

execute if predicate dnv.omni_pets:mainhand_check_pet_food run scoreboard players set dnv.dummy dnv.food_found 1
execute if score dnv.dummy dnv.vegancraft matches 1 if score dnv.dummy dnv.food_found matches 1 run function dnv.vegancraft:pets/check_if_pet_food

kill @s