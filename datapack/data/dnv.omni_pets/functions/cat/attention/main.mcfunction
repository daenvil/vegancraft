# Called by function dnv.omni_pets:tick when dnv.cat_waiting is enabled
# @s = cat

scoreboard players set dnv.dummy dnv.cat_player_counter 0
execute if entity @s[tag=!dnv.expecting_treat,tag=!dnv.cat_cooldown] if predicate dnv.omni_pets:cat_attention_chance as @a[tag=!dnv.cat_abuser,distance=..10,sort=nearest] unless score dnv.dummy dnv.cat_player_counter matches 1.. if predicate dnv.omni_pets:anyhand_check_pet_food run function dnv.omni_pets:cat/attention/valid_player_found
execute if score dnv.dummy dnv.cat_player_counter matches 1.. run function dnv.omni_pets:cat/attention/start
execute if entity @s[tag=dnv.expecting_treat] run function dnv.omni_pets:cat/attention/tick
execute if entity @s[tag=dnv.cat_cooldown] run function dnv.omni_pets:cat/attention/cooldown