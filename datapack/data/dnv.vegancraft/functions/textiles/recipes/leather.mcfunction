# Called by function dnv.ethical_textiles:recipes/leather if vegancraft is enabled
# @s = player who used the custom recipe
# Checks how many vegan slimeballs were used when crafting and labels the leather accordingly

# Difference in vegan slimeballs:
execute store result score @s dnv.vslimes_d run clear @s minecraft:slime_ball{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vslimes_d -= @s dnv.vslime

# Difference in total slimeballs:
execute store result score @s dnv.slimes_d run clear @s minecraft:slime_ball 0
scoreboard players operation @s dnv.slimes_d -= @s dnv.slimes

# If the diff in vegan and non-vegan slimeballs is different, result is non-vegan:
execute unless score @s dnv.vslimes_d = @s dnv.slimes_d run give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_leather","italic":false}]',Lore:['[{"translate":"dnv.vegancraft.contains_slime","italic":false,"color":"red"}]']},CustomModelData:9261006} 1
# If not, it's vegan:
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run function dnv.vegancraft:textiles/crafted_vegan_leather

# Check if only 2 vegan slimeballs were spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 2
# Check if only 1 vegan slimeball was spent:
scoreboard players add @s dnv.slimes_d 1
execute if score @s dnv.vslimes_d = @s dnv.slimes_d run scoreboard players remove @s dnv.vslime 1

# XP reward
scoreboard players add @s dnv.vxp 300
function dnv.vegancraft:award_xp

# Update total counts
scoreboard players remove @s dnv.slimes 3
scoreboard players add @s dnv.leathers 1