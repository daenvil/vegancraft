# Called by function dnv.omni_pets:cat/attention/main when cat is expecting a player's treat
# @s = cat

scoreboard players add @s dnv.cat_attention 1
tp @s ~ ~ ~ facing entity @p[tag=dnv.cat_target] eyes

execute if score @s dnv.cat_attention matches 100.. run function dnv.omni_pets:cat/attention/end
execute store result score @s dnv.cat_hurt run data get entity @s HurtTime
execute if score @s dnv.cat_hurt matches 1.. run function dnv.omni_pets:cat/attention/end