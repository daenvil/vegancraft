# Called by dnv.omni_pets:tick
# @s = stray wolf
# at @s

scoreboard players set dnv.dummy dnv.food_found 0
execute as @e[type=item,limit=1,sort=nearest,distance=..1,tag=!dnv.omni_pets.ignore] if data entity @s Thrower run function dnv.omni_pets:wolf/dropped_item_found
execute if score dnv.dummy dnv.food_found matches 1.. run function dnv.omni_pets:wolf/eat