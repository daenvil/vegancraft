advancement revoke @s only dnv.vegan_food:recipes/knowledge_book/cake

execute store success score @s dnv.knowledge_book_removed run clear @s minecraft:knowledge_book

# If knowledge book, is not present, it means that the vegan version was already called, so skip the following
execute if score @s dnv.knowledge_book_removed matches 0 run return 0

execute unless score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cake{display:{Name:'[{"translate":"dnv.vegan_food.item.cake","italic":false,"fallback":"Egg-free Cake"}]'}} 1
execute if score dnv.dummy dnv.vegancraft matches 1 run give @s minecraft:cake{display:{Name:'[{"translate":"dnv.vegan_food.item.cake","italic":false,"fallback":"Egg-free Cake"}]',Lore:['[{"translate":"dnv.vegancraft.contains_milk","italic":false,"color":"red","fallback":"(Contains milk)"}]']},dnv.Vegan:0b} 1