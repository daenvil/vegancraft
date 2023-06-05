# Called by dnv.omni_pets:tick
# @s = stray wolf
# at @s

scoreboard players set dnv.dummy dnv.food_found 0
execute as @e[type=item,tag=!dnv.omni_pets.ignore,distance=..1,sort=nearest,limit=1] if data entity @s Thrower run function dnv.omni_pets:wolf/dropped_item_found
execute if score dnv.dummy dnv.food_found matches 1.. run function dnv.omni_pets:wolf/eat