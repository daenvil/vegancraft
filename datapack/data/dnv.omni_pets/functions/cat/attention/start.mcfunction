# Called by function dnv.omni_pets:cat/attention/main when cat detects a nearby player holding food
# @s = cat

tag @s add dnv.expecting_treat
scoreboard players set @s dnv.cat_attention 0
data modify entity @s NoAI set value 1b