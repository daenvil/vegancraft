recipe take @s dnv.vegan_food:knowledge_book/cake
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/cake
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cake{display:{Name:'[{"translate":"dnv.vegan_food.item.cake","italic":false}]'}} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:food/recipes/cake