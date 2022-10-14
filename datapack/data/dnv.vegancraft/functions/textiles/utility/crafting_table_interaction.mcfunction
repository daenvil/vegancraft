# Triggers when player interacts with a crafting table (#dnv.core:crafting_table_interaction)
# Stores number of vegan items player currently has, to compare with the number after crafting

advancement revoke @s only dnv.core:triggers/crafting_table_interaction

execute store result score @s dnv.vstrings run clear @s minecraft:string{dnv.Vegan:1b} 0
execute store result score @s dnv.strings run clear @s minecraft:string 0
execute store result score @s dnv.vslime run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
execute store result score @s dnv.slimes run clear @s minecraft:slime_ball 0
execute store result score @s dnv.vleathers run clear @s minecraft:leather{dnv.Vegan:1b} 0
execute store result score @s dnv.leathers run clear @s minecraft:leather 0