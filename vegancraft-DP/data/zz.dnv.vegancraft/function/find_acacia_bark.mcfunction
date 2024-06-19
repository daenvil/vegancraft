execute store result score @s dnv.acacia_gum.raycast_range run attribute @s player.block_interaction_range get -10
scoreboard players operation @s dnv.acacia_gum.raycast_range_doubled = @s dnv.acacia_gum.raycast_range
scoreboard players operation @s dnv.acacia_gum.raycast_range_doubled *= #dnv dnv.2
scoreboard players set @s dnv.acacia_gum.found_acacia 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function zz.dnv.vegancraft:find_acacia_bark_line
execute if score @s dnv.acacia_gum.found_acacia < @s dnv.acacia_gum.raycast_range anchored eyes positioned ^ ^ ^1 anchored feet run function zz.dnv.vegancraft:find_acacia_bark_wide
execute if score @s dnv.acacia_gum.found_acacia < @s dnv.acacia_gum.raycast_range_doubled run function zz.dnv.vegancraft:summon_acacia_gum_ball