# Called by dnv.vegancraft:food/utility/player_tick

execute if score @s dnv.crafted_cake matches 1.. run function dnv.vegancraft:food/crafted_cake
execute if score @s dnv.just_tamed matches 1.. run scoreboard players remove @s dnv.just_tamed 1
execute if score @s dnv.fed_cat matches 1.. run scoreboard players remove @s dnv.fed_cat 1
execute if score @s dnv.ate_nonvegan matches 1 run function dnv.vegancraft:food/ate_nonvegan
execute if score @s dnv.ate_veganalt matches 1 run scoreboard players set @s dnv.ate_veganalt 0