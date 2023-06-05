advancement revoke @s only dnv.vegancraft:textiles/recipes/leather

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book
execute if score @s dnv.knowledge_book_removed matches 0 run clear @s leather{dnv.Vegan:0b} 1
give @s minecraft:leather{display:{Name:'[{"translate":"dnv.ethical_textiles.item.vegan_leather","italic":false,"fallback":"Vegan Leather"}]'},CustomModelData:9261006,dnv.Vegan:1b} 1
advancement grant @s only dnv.vegancraft:textiles/leather

# XP reward (the first 3 XP were given in the other function, this is for also using vegan slimeball)
scoreboard players add @s dnv.vxp 180
tag @s add dnv.vc.award_xp
schedule function dnv.vegancraft:award_xp 1t replace