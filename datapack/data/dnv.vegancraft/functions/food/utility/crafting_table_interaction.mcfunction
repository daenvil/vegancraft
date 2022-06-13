# Triggers when player interacts with a crafting table (#dnv.core:crafting_table_interaction)
# Stores number of vegan items player currently has, to compare with the number after crafting

advancement revoke @s only dnv.core:triggers/crafting_table_interaction

execute store result score @s dnv.seitans run clear @s minecraft:cooked_beef{dnv.Vegan:1b} 0
execute store result score @s dnv.vegan_milks run clear @s minecraft:milk_bucket{dnv.Vegan:1b} 0