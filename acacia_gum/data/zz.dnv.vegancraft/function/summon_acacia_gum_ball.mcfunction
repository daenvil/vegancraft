scoreboard players set @s dnv.acacia_gum.found_acacia 1
loot spawn ~ ~ ~ loot dnv.acacia_gum:drop
execute if score @s dnv.acacia_gum.n_drops matches 2.. run loot spawn ~ ~ ~ loot dnv.acacia_gum:drop
function zz.dnv.vegancraft:award_xp {xp:40}