# Called by dnv.vegancraft:textiles/utility/player_tick_real when player crafts a lead

scoreboard players set @s dnv.craf_lead 0

# Difference in vegan ingredients:
execute store result score @s dnv.vstrings_d run clear @s minecraft:string{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vstrings_d -= @s dnv.vstrings
execute store result score @s dnv.vslimes_d run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vslimes_d -= @s dnv.vslime

# Difference in total ingredients:
execute store result score @s dnv.strings_d run clear @s minecraft:string 0
scoreboard players operation @s dnv.strings_d -= @s dnv.strings
execute store result score @s dnv.slimes_d run clear @s minecraft:slime_ball 0
scoreboard players operation @s dnv.slimes_d -= @s dnv.slimes

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 4
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslimes 1

# Check if only 3 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 3
# Check if only 2 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 2
# Check if only 1 vegan strings were spent:
scoreboard players add @s dnv.strings_d 1
execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 1

# Update total counts
scoreboard players remove @s dnv.strings 4
scoreboard players remove @s dnv.slimes 1