recipe take @s dnv.ethical_textiles:knowledge_book/leather_3to1
recipe take @s dnv.ethical_textiles:knowledge_book/leather_6to1
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/leather_3to1
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/leather_6to1
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_leather","italic":false}]'},CustomModelData:9261006} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:textiles/recipes/leather