# Called by function dnv.omni_pets:owner_found or dnv.vegancraft:owner_found if tamed animal is a cat_type
# @s = player who tamed the cat
# Grants the appropiate criterion based on cat type

execute if score dnv.dummy dnv.cat_type matches 0 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:tabby
execute if score dnv.dummy dnv.cat_type matches 1 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:black
execute if score dnv.dummy dnv.cat_type matches 2 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:red
execute if score dnv.dummy dnv.cat_type matches 3 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:siamese
execute if score dnv.dummy dnv.cat_type matches 4 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:british_shorthair
execute if score dnv.dummy dnv.cat_type matches 5 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:calico
execute if score dnv.dummy dnv.cat_type matches 6 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:persian
execute if score dnv.dummy dnv.cat_type matches 7 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:ragdoll
execute if score dnv.dummy dnv.cat_type matches 8 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:white
execute if score dnv.dummy dnv.cat_type matches 9 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:jellie
execute if score dnv.dummy dnv.cat_type matches 10 run advancement grant @s only minecraft:husbandry/complete_catalogue minecraft:all_black