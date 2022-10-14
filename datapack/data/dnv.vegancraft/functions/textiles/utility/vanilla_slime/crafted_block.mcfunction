# Called by dnv.vegancraft:textiles/utility/player_tick_real when player uses a vanilla recipe containing 4 slime

scoreboard players set @s dnv.craf_sblock 0

# Difference in vegan ingredients:
execute store result score @s dnv.vslimes_d run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vslimes_d -= @s dnv.vslime

# Difference in total ingredients:
execute store result score @s dnv.slimes_d run clear @s minecraft:slime_ball 0
scoreboard players operation @s dnv.slimes_d -= @s dnv.slimes

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 9

# Check if only 8 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 8
# Check if only 7 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 7
# Check if only 6 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 6
# Check if only 5 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 5
# Check if only 4 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 4
# Check if only 3 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 3
# Check if only 2 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 2
# Check if only 1 vegan slime were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 1

# Update total counts
scoreboard players remove @s dnv.slimes 9