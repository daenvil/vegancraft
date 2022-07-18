# Called by dnv.omni_pets:wolf/eat or by dnv.omni_pets:cat/eat
# @s = stray cat or wolf
# at @s

data modify entity @s Owner set from storage dnv.omni_pets:player UUID
particle minecraft:heart ~ ~.5 ~ 0.3 0.3 0.3 1 8
tag @s add dnv.omni_pets.tamed

execute if score dnv.dummy dnv.food_found matches 2 run data modify entity @s CollarColor set value 5

#Store the type of cat, for vanilla advancement completion:
scoreboard players set dnv.dummy dnv.cat_type -1
execute if entity @s[nbt={variant:"minecraft:tabby"}] run scoreboard players set dnv.dummy dnv.cat_type 0
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:black"}] run scoreboard players set dnv.dummy dnv.cat_type 1
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:red"}] run scoreboard players set dnv.dummy dnv.cat_type 2
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:siamese"}] run scoreboard players set dnv.dummy dnv.cat_type 3
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:british_shorthair"}] run scoreboard players set dnv.dummy dnv.cat_type 4
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:calico"}] run scoreboard players set dnv.dummy dnv.cat_type 5
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:persian"}] run scoreboard players set dnv.dummy dnv.cat_type 6
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:ragdoll"}] run scoreboard players set dnv.dummy dnv.cat_type 7
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:white"}] run scoreboard players set dnv.dummy dnv.cat_type 8
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:jellie"}] run scoreboard players set dnv.dummy dnv.cat_type 9
execute if score dnv.dummy dnv.cat_type matches -1 if entity @s[nbt={variant:"minecraft:all_black"}] run scoreboard players set dnv.dummy dnv.cat_type 10

#Search players to grant advancement if needed:
scoreboard players set dnv.dummy dnv.player_found 0
execute if score dnv.dummy dnv.food_found matches 1 as @a[sort=nearest] if score dnv.dummy dnv.player_found matches 0 run function dnv.omni_pets:search_owner
execute if score dnv.dummy dnv.food_found matches 2 as @a[sort=nearest] if score dnv.dummy dnv.player_found matches 0 run function dnv.vegancraft:pets/search_owner