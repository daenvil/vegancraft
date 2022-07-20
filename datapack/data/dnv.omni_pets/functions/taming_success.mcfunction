# Called by dnv.omni_pets:wolf/eat or by dnv.omni_pets:cat/eat
# @s = stray cat or wolf
# at @s

data modify entity @s Owner set from storage dnv.omni_pets:player UUID
particle minecraft:heart ~ ~.5 ~ 0.3 0.3 0.3 1 8
tag @s add dnv.omni_pets.tamed

execute if score dnv.dummy dnv.food_found matches 2 run data modify entity @s CollarColor set value 5

#Store the type of cat, for vanilla advancement completion:
execute store result score dnv.dummy dnv.cat_type run data get entity @s CatType

#Search players to grant advancement if needed:
scoreboard players set dnv.dummy dnv.player_found 0
execute if score dnv.dummy dnv.food_found matches 1 as @a[sort=nearest] if score dnv.dummy dnv.player_found matches 0 run function dnv.omni_pets:search_owner
execute if score dnv.dummy dnv.food_found matches 2 as @a[sort=nearest] if score dnv.dummy dnv.player_found matches 0 run function dnv.vegancraft:pets/search_owner