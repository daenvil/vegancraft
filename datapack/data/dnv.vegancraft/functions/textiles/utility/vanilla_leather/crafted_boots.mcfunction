# Called by dnv.vegancraft:textiles/utility/player_tick_real when player crafts leather boots

scoreboard players set @s dnv.craf_lboots 0

# Difference in vegan ingredients:
execute store result score @s dnv.vleathers_d run clear @s minecraft:leather{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vleathers_d -= @s dnv.vleathers

# Difference in total ingredients:
execute store result score @s dnv.leathers_d run clear @s minecraft:leather 0
scoreboard players operation @s dnv.leathers_d -= @s dnv.leathers

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute unless score @s dnv.vleathers_d matches 0 if score @s dnv.vleathers_d = @s dnv.leathers_d run advancement grant @s only dnv.vegancraft:textiles/clothing
execute if score @s dnv.vleathers_d = @s dnv.leathers_d run scoreboard players remove @s dnv.vleathers 4

# *If vleathers_d==0 in the line above is because purchasing items from villagers also counts as crafting, for some reason. That condition avoids granting the advancement when that happens.

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
scoreboard players remove @s dnv.leathers 4