# Called by function dnv.vegan_food:recipes/cod if vegancraft is enabled
# @s = player who used the custom cod recipe
# Checks how many vegan steaks were used when crafting and labels the cod accordingly

execute store result score @s dnv.seitans_new run clear @s minecraft:cooked_beef{dnv.Vegan:1b} 0
execute if score @s dnv.seitans_new = @s dnv.seitans run give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false}]',Lore:['[{"translate":"dnv.vegancraft.contains_meat","italic":false,"color":"red"}]']},CustomModelData:9261004} 3
execute unless score @s dnv.seitans_new = @s dnv.seitans run function dnv.vegancraft:food/crafted_vegan_fish
scoreboard players add @s dnv.vxp 15
function dnv.vegancraft:award_xp