recipe take @s dnv.vegan_food:knowledge_book/cod
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/cod
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false}]'},CustomModelData:9261004} 3
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:food/recipes/cod