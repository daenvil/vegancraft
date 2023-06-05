# Called by function dnv.omni_pets:cat/attention/main when cat attention is on cooldown
# @s = cat

scoreboard players remove @s dnv.cat_attention 1
execute if score @s dnv.cat_attention matches ..-200 run tag @s remove dnv.cat_cooldown