# Called by dnv.vegancraft:textiles/utility/player_tick_real when player uses vanilla recipe containing 1 slimeball

scoreboard players set @s dnv.craf_spiston 0
scoreboard players set @s dnv.craf_mcream 0

# Difference in vegan ingredients:
execute store result score @s dnv.vslimes_d run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vslimes_d -= @s dnv.vslime

# Difference in total ingredients:
execute store result score @s dnv.slimes_d run clear @s minecraft:slime_ball 0
scoreboard players operation @s dnv.slimes_d -= @s dnv.slimes

# If the diff in vegan and non-vegan ingredients is the same, result is vegan:
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 1

# Update total counts
scoreboard players remove @s dnv.slimes 1