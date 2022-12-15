# Triggers when player interacts with a crafting table (#dnv.core:triggers/interacted_with_crafting_table) or when player picks up or drops a honeycomb item
# Stores number of vegan honeycombs player currently has, to compare with the number after crafting

advancement revoke @s only dnv.core:triggers/interacted_with_crafting_table
scoreboard players set @s dnv.pickup_honeycomb 0
scoreboard players set @s dnv.dropped_honeycomb 0

execute store result score @s dnv.vhoneycombs run clear @s minecraft:honeycomb{dnv.Vegan:1b} 0
execute store result score @s dnv.honeycombs run clear @s minecraft:honeycomb 0