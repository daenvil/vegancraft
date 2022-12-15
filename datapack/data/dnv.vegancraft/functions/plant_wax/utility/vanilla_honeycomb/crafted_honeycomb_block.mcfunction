# Called by dnv.vegancraft:plant_wax/utility/player_tick_real when player crafts a honeycomb block

scoreboard players set @s dnv.craf_honeycomb_block 0

# Difference in vegan ingredients:
execute store result score @s dnv.vhoneycombs_d run clear @s minecraft:honeycomb{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vhoneycombs_d -= @s dnv.vhoneycombs

# Difference in total ingredients:
execute store result score @s dnv.honeycombs_d run clear @s minecraft:honeycomb 0
scoreboard players operation @s dnv.honeycombs_d -= @s dnv.honeycombs

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 4

# Check if only 3 vegan honeycombs were spent:
scoreboard players add @s dnv.honeycombs_d 1
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 3
# Check if only 2 vegan honeycombs were spent:
scoreboard players add @s dnv.honeycombs_d 1
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 2
# Check if only 1 vegan honeycombs were spent:
scoreboard players add @s dnv.honeycombs_d 1
execute if score @s dnv.vhoneycombs_d = @s dnv.honeycombs_d run scoreboard players remove @s dnv.vhoneycombs 1

# Update total counts
scoreboard players remove @s dnv.honeycombs 4