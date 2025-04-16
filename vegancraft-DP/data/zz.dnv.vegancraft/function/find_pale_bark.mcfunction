execute store result score @s dnv.resin_from_stripping.raycast_range run attribute @s block_interaction_range get -10
scoreboard players operation @s dnv.resin_from_stripping.raycast_range_doubled = @s dnv.resin_from_stripping.raycast_range
scoreboard players operation @s dnv.resin_from_stripping.raycast_range_doubled *= #dnv dnv.2
scoreboard players set @s dnv.resin_from_stripping.found_pale_bark 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function zz.dnv.vegancraft:find_pale_bark_line
execute if score @s dnv.resin_from_stripping.found_pale_bark < @s dnv.resin_from_stripping.raycast_range anchored eyes positioned ^ ^ ^1 anchored feet run function zz.dnv.vegancraft:find_pale_bark_wide
execute if score @s dnv.resin_from_stripping.found_pale_bark < @s dnv.resin_from_stripping.raycast_range_doubled run function zz.dnv.vegancraft:find_pale_bark_success