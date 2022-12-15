# Called by function dnv.core:furnace/1second
# @s = Furnace marker
# position = Furnace marker
# Updates the burn timer score every second, this reduces the amount of times the NBT data of the furnace needs to be accessed.

execute store result score @s dnv.cook_time run data get block ~ ~ ~ CookTime