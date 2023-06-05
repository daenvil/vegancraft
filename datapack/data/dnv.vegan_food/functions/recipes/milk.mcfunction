advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/milk

clear @s minecraft:knowledge_book
give @s minecraft:milk_bucket{display:{Name:'[{"translate":"dnv.vegan_food.item.plant_milk_bucket","italic":false,"fallback":"Plant Milk Bucket"}]'},dnv.Vegan:1b,CustomModelData:9261001} 1

scoreboard players add @s dnv.vegan_milks 1