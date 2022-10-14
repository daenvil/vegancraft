# Called by dnv.vegancraft:textiles/utility/player_tick_real when player crafts leather horse armor

scoreboard players set @s dnv.craf_lharmor 0

# Difference in vegan ingredients:
execute store result score @s dnv.vleathers_d run clear @s minecraft:leather{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vleathers_d -= @s dnv.vleathers

# Difference in total ingredients:
execute store result score @s dnv.leathers_d run clear @s minecraft:leather 0
scoreboard players operation @s dnv.leathers_d -= @s dnv.leathers

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 7

# Check if only 6 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 6
# Check if only 5 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 5
# Check if only 4 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 4
# Check if only 3 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 3
# Check if only 2 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 2
# Check if only 1 vegan leathers were spent:
scoreboard players add @s dnv.leathers_d 1
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 1

# Update total counts
scoreboard players remove @s dnv.leathers 7