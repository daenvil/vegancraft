# Called by dnv.vegancraft:textiles/utility/player_tick_real when player uses a vanilla recipe containing 2 strings

scoreboard players set @s dnv.craf_xbow 0
scoreboard players set @s dnv.craf_frod 0
scoreboard players set @s dnv.craf_loom 0

# Difference in vegan ingredients:
execute store result score @s dnv.vstrings_d run clear @s minecraft:string{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vstrings_d -= @s dnv.vstrings

# Difference in total ingredients:
execute store result score @s dnv.strings_d run clear @s minecraft:string 0
scoreboard players operation @s dnv.strings_d -= @s dnv.strings

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 2

# Check if only 1 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 1

# Update total counts
scoreboard players remove @s dnv.strings 2