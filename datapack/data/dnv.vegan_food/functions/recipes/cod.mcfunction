advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/cod

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book

scoreboard players add @s dnv.vxp 15
tag @s add dnv.vc.award_xp
schedule function dnv.vegancraft:award_xp 1t replace

# If knowledge book, is not present, it means that the vegan version was already called, so skip the following
execute if score @s dnv.knowledge_book_removed matches 0 run return 0

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false,"fallback":"Not-fish Fillet"}]'},CustomModelData:9261004} 3
execute if score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false,"fallback":"Not-fish Fillet"}]',Lore:['[{"translate":"dnv.vegancraft.contains_meat","italic":false,"color":"red","fallback":"(Contains meat)"}]']},CustomModelData:9261004,dnv.Vegan:0b} 3