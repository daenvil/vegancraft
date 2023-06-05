advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/string_sugarcane
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/string_vines
clear @s minecraft:knowledge_book

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:string{display:{Name:'[{"translate":"dnv.ethical_textiles.item.plant_string","italic":false,"fallback":"Plant String"}]'},CustomModelData:9261007} 2
execute if score dnv.dummy dnv.vegancraft matches 1 run function dnv.vegancraft:textiles/recipes/string