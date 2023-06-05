advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/cobweb

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book

# If knowledge book, is not present, it means that the vegan version was already called, so skip the following
execute if score @s dnv.knowledge_book_removed matches 0 run return 0

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cobweb{display:{Name:'[{"translate":"dnv.ethical_textiles.item.cobweb","italic":false,"fallback":"Synthethic Cobweb"}]'}} 2
execute if score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cobweb{display:{Name:'[{"translate":"dnv.ethical_textiles.item.cobweb","italic":false,"fallback":"Synthethic Cobweb"}]',Lore:['[{"translate":"dnv.vegancraft.contains_animal_products","italic":false,"color":"red","fallback":"(Contains animal products)"}]']},dnv.Vegan:0b} 2