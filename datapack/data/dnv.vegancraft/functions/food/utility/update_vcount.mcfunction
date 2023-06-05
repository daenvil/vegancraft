# Stores number of vegan items player currently has, to compare with the number after crafting

execute store result score @s dnv.seitans run clear @s minecraft:cooked_beef{dnv.Vegan:1b} 0
execute store result score @s dnv.vegan_milks run clear @s minecraft:milk_bucket{dnv.Vegan:1b} 0

scoreboard players set @s dnv.pickup_milk 0
scoreboard players set @s dnv.dropped_milk 0
scoreboard players set @s dnv.pickup_steak 0
scoreboard players set @s dnv.dropped_steak 0