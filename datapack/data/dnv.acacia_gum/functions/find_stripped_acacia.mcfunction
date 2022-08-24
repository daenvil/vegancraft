# Called by function dnv.acacia_gum:used_axe_on_acacia_bark
# @s = player who stripped acacia log/wood

scoreboard players set @s dnv.found_acacia 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function dnv.acacia_gum:find_stripped_acacia_line
#execute if score @s dnv.found_acacia matches ..-61 run tellraw @s "[dnv.acacia_gum:debug_mode] Stripped acacia could not be found, trying a wider search..."
execute if score @s dnv.found_acacia matches ..-61 anchored eyes positioned ^ ^ ^1 anchored feet run function dnv.acacia_gum:find_stripped_acacia_wide
#execute if score @s dnv.found_acacia matches ..-121 run tellraw @s "[dnv.acacia_gum:debug_mode] Stripped acacia was not found."
execute if score @s dnv.found_acacia matches ..-121 run function dnv.acacia_gum:summon_acacia_gum