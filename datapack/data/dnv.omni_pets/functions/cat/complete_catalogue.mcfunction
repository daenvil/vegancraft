# Called by function dnv.omni_pets:owner_found or dnv.vegancraft:owner_found if tamed animal is a cat_type
# @s = player who tamed the cat
# Grants the appropiate criterion based on cat type

execute if score dnv.dummy dnv.cat_type matches 0 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/tabby.png
execute if score dnv.dummy dnv.cat_type matches 1 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/black.png
execute if score dnv.dummy dnv.cat_type matches 2 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/red.png
execute if score dnv.dummy dnv.cat_type matches 3 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/siamese.png
execute if score dnv.dummy dnv.cat_type matches 4 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/british_shorthair.png
execute if score dnv.dummy dnv.cat_type matches 5 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/calico.png
execute if score dnv.dummy dnv.cat_type matches 6 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/persian.png
execute if score dnv.dummy dnv.cat_type matches 7 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/ragdoll.png
execute if score dnv.dummy dnv.cat_type matches 8 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/white.png
execute if score dnv.dummy dnv.cat_type matches 9 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/jellie.png
execute if score dnv.dummy dnv.cat_type matches 10 run advancement grant @s only minecraft:husbandry/complete_catalogue textures/entity/cat/all_black.png