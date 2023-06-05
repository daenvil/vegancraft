advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/bed_grass
clear @s minecraft:knowledge_book

give @s minecraft:green_bed{display:{Name:'[{"translate":"dnv.ethical_textiles.item.grass_bed","italic":false,"fallback":"Grass Bed"}]'}} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run advancement grant @s only dnv.vegancraft:textiles/bed