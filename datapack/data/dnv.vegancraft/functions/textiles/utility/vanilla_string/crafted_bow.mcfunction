# Called by dnv.vegancraft:textiles/utility/player_tick_real when player crafts bow

scoreboard players set @s dnv.craf_bow 0

# Difference in vegan ingredients:
execute store result score @s dnv.vstrings_d run clear @s minecraft:string{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vstrings_d -= @s dnv.vstrings

# Difference in total ingredients:
execute store result score @s dnv.strings_d run clear @s minecraft:string 0
scoreboard players operation @s dnv.strings_d -= @s dnv.strings

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute unless score @s dnv.vstrings_d matches 0 if score @s dnv.vstrings_d = @s dnv.strings_d run advancement grant @s only dnv.vegancraft:textiles/bow
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 3

# *If vlstrings_d==0 in the line above is because purchasing items from villagers also counts as crafting, for some reason. That condition avoids granting the advancement when that happens.

# Check if only 2 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 2
# Check if only 1 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 1

# Update total counts
scoreboard players remove @s dnv.strings 3