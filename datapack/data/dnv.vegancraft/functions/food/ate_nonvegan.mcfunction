# Called by dnv.vegancraft:food/utility/player_tick_real if player ate a non-vegan food

scoreboard players set @s dnv.ate_nonvegan 0
execute unless score @s dnv.ate_veganalt matches 1 run function dnv.vegancraft:food/reset_diet