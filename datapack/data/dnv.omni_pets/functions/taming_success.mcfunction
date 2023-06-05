# Called by dnv.omni_pets:wolf/eat or by dnv.omni_pets:cat/eat
# @s = stray cat or wolf
# at @s

data modify entity @s Owner set from storage dnv.omni_pets:player UUID
particle minecraft:heart ~ ~.5 ~ 0.3 0.3 0.3 1 8
tag @s add dnv.omni_pets.tamed
execute if score dnv.dummy dnv.pet_type matches 2 if entity @s[tag=dnv.expecting_treat] run function dnv.omni_pets:cat/attention/end

execute if score dnv.dummy dnv.food_found matches 2 run data modify entity @s CollarColor set value 5

#Store the type of cat, for vanilla advancement completion:
execute store result score dnv.dummy dnv.cat_type run function dnv.omni_pets:cat/cat_type_check

#Grant taming-related advancements to new owner:
advancement grant @s only minecraft:husbandry/tame_an_animal
execute if score dnv.dummy dnv.pet_type matches 2 on owner run function dnv.omni_pets:cat/complete_catalogue
execute if score dnv.dummy dnv.food_found matches 2 on owner run function dnv.vegancraft:pets/grant_advancements