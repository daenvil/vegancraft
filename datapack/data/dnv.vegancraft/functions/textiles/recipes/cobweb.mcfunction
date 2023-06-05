advancement revoke @s only dnv.vegancraft:textiles/recipes/cobweb

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book
execute if score @s dnv.knowledge_book_removed matches 0 run clear @s cobweb{dnv.Vegan:0b} 2
give @s minecraft:cobweb{display:{Name:'[{"translate":"dnv.ethical_textiles.item.cobweb","italic":false,"fallback":"Synthetic Cobweb"}]'},dnv.Vegan:1b} 2
advancement grant @s only dnv.vegancraft:textiles/cobweb