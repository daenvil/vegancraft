# Called by dnv.core:furnace/load or scheduled by itself

scoreboard players set @s[type=marker,tag=dnv.furnace] dnv.cook_time -1
#Update working furnaces:
execute as @e[type=marker,tag=dnv.furnace] at @s if block ~ ~ ~ minecraft:furnace[lit=true] run function dnv.core:furnace/update

schedule function dnv.core:furnace/1second 1s replace