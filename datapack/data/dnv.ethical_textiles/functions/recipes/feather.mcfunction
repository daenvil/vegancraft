advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/feather

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book

# XP reward
execute if score dnv.dummy dnv.vegancraft matches 1 run scoreboard players add @s dnv.vxp 100
execute if score dnv.dummy dnv.vegancraft matches 1 run tag @s add dnv.vc.award_xp
execute if score dnv.dummy dnv.vegancraft matches 1 run schedule function dnv.vegancraft:award_xp 1t replace

# If knowledge book, is not present, it means that the vegan version was already called, so skip the following
execute if score @s dnv.knowledge_book_removed matches 0 run return 0

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:feather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_feather","italic":false,"fallback":"Faux Feather"}]'},CustomModelData:9261010} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:feather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_feather","italic":false,"fallback":"Faux Feather"}]',Lore:['[{"translate":"dnv.vegancraft.contains_animal_products","italic":false,"color":"red","fallback":"(Contains animal products)"}]']},CustomModelData:9261010,dnv.Vegan:0b} 1