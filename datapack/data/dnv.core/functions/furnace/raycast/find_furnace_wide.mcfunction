# Called by function dnv.core:furnace/raycast/find_furnace or by itself

execute if block ^1 ^ ^ furnace positioned ^1 ^ ^ run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^1 ^ ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^-1 ^ ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^ ^1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^1 ^1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^-1 ^1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
execute if score @s dnv.found_furnace matches -120..-61 positioned ^-1 ^-1 ^ if block ~ ~ ~ furnace run function dnv.core:furnace/raycast/find_furnace_success
# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.found_furnace matches -120..-61 run scoreboard players remove @s dnv.found_furnace 1
execute if score @s dnv.found_furnace matches -120..-61 positioned ^ ^ ^.1 run function dnv.core:furnace/raycast/find_furnace_wide