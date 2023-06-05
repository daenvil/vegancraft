advancement revoke @s only dnv.vegancraft:textiles/recipes/feather

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book
execute if score @s dnv.knowledge_book_removed matches 0 run clear @s feather{dnv.Vegan:0b} 1
give @s minecraft:feather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_feather","italic":false,"fallback":"Faux Feather"}]'},CustomModelData:9261010,dnv.Vegan:1b} 1
advancement grant @s only dnv.vegancraft:textiles/feather

# XP reward given in the other function