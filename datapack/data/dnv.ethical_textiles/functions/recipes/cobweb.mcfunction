recipe take @s dnv.ethical_textiles:knowledge_book/cobweb
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/cobweb
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cobweb{display:{Name:'[{"translate":"dnv.ethical_textiles.item.cobweb","italic":false}]'}} 2
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:textiles/recipes/cobweb