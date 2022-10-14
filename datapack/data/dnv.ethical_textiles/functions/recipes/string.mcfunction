recipe take @s dnv.ethical_textiles:knowledge_book/string_sugarcane
recipe take @s dnv.ethical_textiles:knowledge_book/string_vines
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/string_sugarcane
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/string_vines
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:string 2
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:textiles/recipes/string