# Called by function dnv.vegan_food:recipes/cake if vegancraft is enabled
# @s = player who used the custom cake recipe
# Checks how many plant milks were used when crafting and labels the cake accordingly

execute store result score @s dnv.vegan_milk_d run clear @s minecraft:milk_bucket{dnv.Vegan:1b} 0
scoreboard players operation @s dnv.vegan_milk_d -= @s dnv.vegan_milks

execute if score @s dnv.vegan_milk_d matches -2.. run give @s minecraft:cake{display:{Name:'[{"translate":"dnv.vegan_food.item.cake","italic":false}]',Lore:['[{"translate":"dnv.vegancraft.contains_milk","italic":false,"color":"red"}]']}} 1
execute if score @s dnv.vegan_milk_d matches ..-3 run function dnv.vegancraft:food/crafted_vegan_cake
scoreboard players operation @s dnv.vegan_milks += @s dnv.vegan_milk_d