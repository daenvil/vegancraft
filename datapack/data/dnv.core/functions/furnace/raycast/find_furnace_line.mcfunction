# Called by function dnv.core:furnace/raycast/find_furnace or by itself

execute if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.found_furnace matches -60..0 run scoreboard players remove @s dnv.found_furnace 1
execute if score @s dnv.found_furnace matches -60..0 positioned ^ ^ ^.1 run function dnv.core:furnace/raycast/find_furnace_line