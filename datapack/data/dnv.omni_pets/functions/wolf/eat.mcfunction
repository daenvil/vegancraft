# Called by dnv.omni_pets:wolf/tick if wolf consumed an item
# @s = stray wolf
# at @s

playsound entity.generic.eat neutral @a ~ ~ ~ 0.5
scoreboard players set dnv.dummy dnv.taming_ok 0
execute if predicate dnv.omni_pets:wolf_taming_chance run scoreboard players set dnv.dummy dnv.taming_ok 1
execute if score dnv.dummy dnv.taming_ok matches 1 run function dnv.omni_pets:taming_success
execute unless score dnv.dummy dnv.taming_ok matches 1 run function dnv.omni_pets:taming_failure