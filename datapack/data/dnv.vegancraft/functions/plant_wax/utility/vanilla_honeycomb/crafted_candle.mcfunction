# Called by dnv.vegancraft:plant_wax/utility/player_tick_real when player crafts a candle
# WIP

scoreboard players set @s dnv.craf_candle 0

# Difference in vegan ingredients:
execute store result score @s dnv.vhoneycombs_d run clear @s minecraft:honeycomb{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vhoneycombs_d -= @s dnv.vhoneycombs
#execute store result score @s dnv.vstrings_d run clear @s minecraft:string{dnv.Vegan:1b} 0
#scoreboard players operation @s dnv.vstrings_d -= @s dnv.vstrings

# Difference in total ingredients:
execute store result score @s dnv.honeycombs_d run clear @s minecraft:honeycomb 0
scoreboard players operation @s dnv.honeycombs_d -= @s dnv.honeycombs
#execute store result score @s dnv.strings_d run clear @s minecraft:string 0
#scoreboard players operation @s dnv.strings_d -= @s dnv.strings

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
#execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d if score @s dnv.vstrings_d = @s dnv.strings_d run advancement grant @s only dnv.vegancraft:plant_wax/candle

# Update total counts
scoreboard players remove @s dnv.honeycombs 1
#scoreboard players remove @s dnv.strings 1
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 1
#execute if score @s dnv.vstrings_d = @s dnv.strings_d run scoreboard players remove @s dnv.vstrings 1