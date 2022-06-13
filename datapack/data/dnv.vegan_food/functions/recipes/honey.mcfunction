recipe take @s dnv.vegan_food:knowledge_book/honey_flower
recipe take @s dnv.vegan_food:knowledge_book/honey_fruit
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/honey_flower
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/honey_fruit

give @s minecraft:honey_bottle{display:{Name:'[{"translate":"dnv.vegan_food.item.vegan_honey_bottle","italic":false}]'},dnv.Vegan:1b,CustomModelData:9261002} 1
clear @s minecraft:knowledge_book