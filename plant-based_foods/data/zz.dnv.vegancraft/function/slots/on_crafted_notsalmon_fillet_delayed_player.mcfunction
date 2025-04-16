tag @s remove dnv.subject.crafted_notsalmon_fillet
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_notsalmon_fillet 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor salmon run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"custom_data":{"dnv.vegan":false},"food":{"nutrition":6,"saturation":9.6},"item_model":"dnv.vegan_food:notsalmon_fillet","item_name":{"fallback":"Not-salmon Fillet","italic":false,"translate":"dnv.vegan_food.item.notsalmon_fillet"},"lore":[{"color":"red","fallback":"(Contains animal products)","italic":false,"translate":"dnv.vegancraft.contains_animal_products"},{"color":"dark_green","italic":true,"text":"Daenvil's Plant-based Foods"}]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_notsalmon_fillet 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count notsalmon_fillet.count int 1 run scoreboard players get @s dnv.count.crafted_notsalmon_fillet
function zz.dnv.vegancraft:slots/on_crafted_notsalmon_fillet_replace_output with storage dnv.vegancraft:craft_count notsalmon_fillet
scoreboard players set @s dnv.count.crafted_notsalmon_fillet 0