advancement revoke @s only dnv.vegancraft:food/recipes/cod

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book
execute if score @s dnv.knowledge_book_removed matches 0 run clear @s cod{dnv.Vegan:0b} 3
give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false,"fallback":"Not-fish Fillet"}]'},dnv.Vegan:1b,CustomModelData:9261004} 3
advancement grant @s only dnv.vegancraft:food/fish