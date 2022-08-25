# Called by function dnv.acacia_gum:find_stripped_acacia or by itself
# @s = player who stripped acacia log or wood
# Finds the block that was just stripped. This one searches in the blocks around the first search.
# Apparently the block doesn't convert into its stripped variant *after* this tick

execute if block ^1 ^ ^ minecraft:acacia_log positioned ^1 ^ ^ run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^ ^1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^ ^1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_log run function dnv.acacia_gum:summon_acacia_gum
execute if score @s dnv.found_acacia matches -120..-61 positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:acacia_wood run function dnv.acacia_gum:summon_acacia_gum

# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.found_acacia matches -120..-61 run scoreboard players remove @s dnv.found_acacia 1
execute if score @s dnv.found_acacia matches -120..-61 positioned ^ ^ ^.1 run function dnv.acacia_gum:find_stripped_acacia_wide

# Objective dnv.found_acacia functions as both a tracker of how many steps were done (in negative numbers) and as confirmation of success (1)
