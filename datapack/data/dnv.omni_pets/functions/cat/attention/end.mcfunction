# Called by function dnv.omni_pets:cat/attention/tick when the maximum attention period passes
# @s = cat

data modify entity @s NoAI set value 0b
tag @s remove dnv.expecting_treat
scoreboard players set @s dnv.cat_attention 0
tag @s add dnv.cat_cooldown
tag @p[tag=dnv.cat_target] remove dnv.cat_target