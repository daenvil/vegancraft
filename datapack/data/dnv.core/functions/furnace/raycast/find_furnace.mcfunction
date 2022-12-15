# Called through #dnv.core:triggers/interacted_with_furnace by function dnv.core:triggers/interacted_with_furnace
# Called through #dnv.core:triggers/placed_furnace by function dnv.core:triggers/placed_furnace
# Raycast function to find block furnace. Needs to be triggered by something.
# Objective dnv.found_furnace functions as both a tracker of how many steps were done (in negative numbers) and as confirmation of success (1)

scoreboard players set @s dnv.found_furnace 0
execute anchored eyes positioned ^ ^ ^ run function dnv.core:furnace/raycast/find_furnace_line
execute if score @s dnv.found_furnace matches ..-61 anchored eyes positioned ^ ^ ^1 run function dnv.core:furnace/raycast/find_furnace_wide
#execute if score @s dnv.found_furnace matches ..-121 run function dnv.core:furnace/raycast/find_furnace_fail