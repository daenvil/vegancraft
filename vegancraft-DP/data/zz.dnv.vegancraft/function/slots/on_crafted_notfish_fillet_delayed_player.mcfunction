tag @s remove dnv.subject.crafted_notfish_fillet
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_notfish_fillet 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor cod run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"consumable":{},"custom_data":{"dnv.vegan":false},"food":{"nutrition":5,"saturation":6},"item_model":"dnv.vegan_food:notfish_fillet","item_name":"{\"translate\":\"dnv.vegan_food.item.notfish_fillet\",\"fallback\":\"Not-fish Fillet\",\"italic\":false}","lore":["{\"translate\":\"dnv.vegancraft.contains_animal_products\",\"fallback\":\"(Contains animal products)\",\"color\":\"red\",\"italic\":false}","{\"text\":\"Daenvil's Plant-based Foods\",\"color\":\"dark_green\",\"italic\":true}"]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_notfish_fillet 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count notfish_fillet.count int 1 run scoreboard players get @s dnv.count.crafted_notfish_fillet
function zz.dnv.vegancraft:slots/on_crafted_notfish_fillet_replace_output with storage dnv.vegancraft:craft_count notfish_fillet
scoreboard players set @s dnv.count.crafted_notfish_fillet 0