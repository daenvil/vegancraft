recipe take @s dnv.vegan_food:knowledge_book/milk
advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/milk

give @s minecraft:milk_bucket{display:{Name:'[{"translate":"dnv.vegan_food.item.plant_milk_bucket","italic":false}]'},dnv.Vegan:1b,CustomModelData:9261001} 1
clear @s minecraft:knowledge_book

scoreboard players add @s dnv.vegan_milks 1