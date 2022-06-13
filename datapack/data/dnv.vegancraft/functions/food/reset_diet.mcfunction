# Called by dnv.vegancraft:food/ate_nonvegan if player ate a non-vegan food

scoreboard players set @s dnv.vdiet_time 0
scoreboard players set @s dnv.vdiet_time_d 0
execute if entity @s[advancements={dnv.vegancraft:food/diet=false}] run function dnv.vegancraft:food/revoke_diet_criteria
execute if entity @s[advancements={dnv.vegancraft:food/diet_alive=false}] run function dnv.vegancraft:food/revoke_diet_alive_criteria