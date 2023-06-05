advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/leather_3to1
advancement revoke @s only dnv.ethical_textiles:recipes/knowledge_book/leather_6to1

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book

# XP reward
execute if score dnv.dummy dnv.vegancraft matches 1 run scoreboard players add @s dnv.vxp 300
execute if score dnv.dummy dnv.vegancraft matches 1 run tag @s add dnv.vc.award_xp
execute if score dnv.dummy dnv.vegancraft matches 1 run schedule function dnv.vegancraft:award_xp 1t replace

# If knowledge book, is not present, it means that the vegan version was already called, so skip the following
execute if score @s dnv.knowledge_book_removed matches 0 run return 0

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_leather","italic":false,"fallback":"Faux Leather"}]'},CustomModelData:9261006} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.faux_leather","italic":false,"fallback":"Faux Leather"}]',Lore:['[{"translate":"dnv.vegancraft.contains_slime","italic":false,"color":"red","fallback":"(Contains slime)"}]']},CustomModelData:9261006,dnv.Vegan:0b} 1