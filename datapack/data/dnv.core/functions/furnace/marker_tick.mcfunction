# Called by function dnv.core:furnace/tick
# @s = Furnace marker
# position = Furnace marker

# If there is not a furnace here, delete the marker:
execute unless block ~ ~ ~ furnace run kill @s

# Handle burn timer:
execute if score @s dnv.cook_time matches 0.. run scoreboard players add @s dnv.cook_time 1

# Check if item completed smelting:
execute if score @s dnv.cook_time matches 200 run function #dnv.core:furnace/cook_timer_complete