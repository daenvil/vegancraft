recipe take @s dnv.vegan_food:knowledge_book/steak
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/steak

give @s minecraft:cooked_beef{display:{Name:'[{"translate":"dnv.vegan_food.item.seitan_steak","italic":false}]'},dnv.Vegan:1b,CustomModelData:9261003} 1
clear @s minecraft:knowledge_book
give @s minecraft:bowl 1

scoreboard players add @s dnv.seitans 1

execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:food/recipes/steak