tag @s remove dnv.subject.crafted_seitan_stew
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_seitan_stew 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor rabbit_stew run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"custom_data":{"dnv.vegan":false},"item_model":"dnv.vegan_food:seitan_stew","item_name":"{\"translate\":\"dnv.vegan_food.item.seitan_stew\",\"fallback\":\"Seitan Stew\",\"italic\":false}","lore":["{\"translate\":\"dnv.vegancraft.contains_animal_products\",\"fallback\":\"(Contains animal products)\",\"color\":\"red\",\"italic\":false}","{\"text\":\"Daenvil's Plant-based Foods\",\"color\":\"dark_green\",\"italic\":true}"]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_seitan_stew 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count seitan_stew.count int 1 run scoreboard players get @s dnv.count.crafted_seitan_stew
function zz.dnv.vegancraft:slots/on_crafted_seitan_stew_replace_output with storage dnv.vegancraft:craft_count seitan_stew
scoreboard players set @s dnv.count.crafted_seitan_stew 0