tag @s remove dnv.subject.crafted_faux_leather_3to1
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_faux_leather_3to1 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor leather run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"custom_data":{"dnv.vegan":false},"item_model":"dnv.ethical_textiles:faux_leather","item_name":{"fallback":"Faux Leather","italic":false,"translate":"dnv.ethical_textiles.item.faux_leather"},"lore":[{"color":"red","fallback":"(Contains animal products)","italic":false,"translate":"dnv.vegancraft.contains_animal_products"},{"color":"#954535","italic":true,"text":"Daenvil's Ethical Textiles"}]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_faux_leather_3to1 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count faux_leather_3to1.count int 1 run scoreboard players get @s dnv.count.crafted_faux_leather_3to1
function zz.dnv.vegancraft:slots/on_crafted_faux_leather_3to1_replace_output with storage dnv.vegancraft:craft_count faux_leather_3to1
scoreboard players set @s dnv.count.crafted_faux_leather_3to1 0