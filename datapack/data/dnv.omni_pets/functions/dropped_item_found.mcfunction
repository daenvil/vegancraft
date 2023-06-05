# Called by dnv.omni_pets:wolf/tick or by dnv.omni_pets:cat/tick
# @s = item entity
# at ticked animal position
# summons invisible armor stand to check the item tag, calling function dnv.omni_pets:check_if_pet_food
# if it's food, calls function dnv.omni_pets:dropped_item_consumed
# if not, marks item as to be ignored

summon armor_stand ~ ~ ~ {Tags:["dnv.item_checker","smithed.entity","smithed.strict","global.ignore"],Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b}
data modify entity @e[type=armor_stand,tag=dnv.item_checker,sort=nearest,limit=1] HandItems[0] set from entity @s Item
execute as @e[type=armor_stand,tag=dnv.item_checker,sort=nearest,limit=1] run function dnv.omni_pets:check_if_pet_food
execute if score dnv.dummy dnv.food_found matches 1.. at @s run function dnv.omni_pets:dropped_item_consumed
execute unless score dnv.dummy dnv.food_found matches 1.. run tag @s add dnv.omni_pets.ignore
