# Called by dnv.omni_pets:cat/tick if cat consumed an item
# @s = stray cat
# at @s

playsound entity.cat.eat neutral @a ~ ~ ~ 1
execute unless score @s dnv.cat_attention matches 0..20 run scoreboard players remove @s dnv.cat_attention 20
scoreboard players set dnv.dummy dnv.taming_ok 0
execute if predicate dnv.omni_pets:cat_taming_chance run scoreboard players set dnv.dummy dnv.taming_ok 1
execute if score dnv.dummy dnv.taming_ok matches 1 run function dnv.omni_pets:taming_success
execute unless score dnv.dummy dnv.taming_ok matches 1 run function dnv.omni_pets:taming_failure