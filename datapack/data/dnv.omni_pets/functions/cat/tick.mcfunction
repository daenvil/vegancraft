# Called by dnv.omni_pets:tick
# @s = stray cat
# at @s

scoreboard players set dnv.dummy dnv.food_found 0
execute as @e[type=item,tag=!dnv.omni_pets.ignore,distance=..1,sort=nearest,limit=1] if data entity @s Thrower run function dnv.omni_pets:cat/dropped_item_found
execute if score dnv.dummy dnv.cat_waiting matches 1 run function dnv.omni_pets:cat/attention/main
execute if score dnv.dummy dnv.food_found matches 1.. run function dnv.omni_pets:cat/eat