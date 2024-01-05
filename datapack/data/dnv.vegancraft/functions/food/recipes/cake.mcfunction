advancement revoke @s only dnv.vegancraft:food/recipes/cake

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book
execute if score @s dnv.knowledge_book_removed matches 0 run clear @s cake{dnv.Vegan:0b} 1
give @s minecraft:cake{display:{Name:'[{"translate":"dnv.vegan_food.item.cake_vegan","italic":false,"fallback":"Vegan Cake"}]'},dnv.Vegan:1b} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run advancement grant @s only dnv.vegancraft:food/cake