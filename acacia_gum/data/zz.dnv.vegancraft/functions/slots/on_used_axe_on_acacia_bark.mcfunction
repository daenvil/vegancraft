advancement revoke @s only zz.dnv.vegancraft:triggers/used_axe_on_acacia_bark
scoreboard players set @s dnv.acacia_gum.n_drops 0
execute if predicate dnv.acacia_gum:extra_drop_chance_fortune_3 if predicate dnv.acacia_gum:holding_axe_fortune_3 run scoreboard players set @s dnv.acacia_gum.n_drops 1
execute unless score @s dnv.acacia_gum.n_drops matches 1 if predicate dnv.acacia_gum:extra_drop_chance_fortune_2 if predicate dnv.acacia_gum:holding_axe_fortune_2 run scoreboard players set @s dnv.acacia_gum.n_drops 1
execute unless score @s dnv.acacia_gum.n_drops matches 1 if predicate dnv.acacia_gum:extra_drop_chance_fortune_1 if predicate dnv.acacia_gum:holding_axe_fortune_1 run scoreboard players set @s dnv.acacia_gum.n_drops 1
execute if predicate dnv.acacia_gum:drop_chance_no_fortune run scoreboard players add @s dnv.acacia_gum.n_drops 1
execute if score @s dnv.acacia_gum.n_drops matches 1.. run function zz.dnv.vegancraft:find_acacia_bark