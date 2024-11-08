tag @s remove dnv.subject.crafted_copper_horn_dream
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_copper_horn_dream 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor goat_horn run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"custom_data":{"dnv.vegan":false},"custom_model_data":9261011,"instrument":"dream_goat_horn","item_name":"{\"translate\":\"dnv.vegancraft.item.copper_horn\",\"fallback\":\"Copper Horn\",\"italic\":false}","lore":["{\"translate\":\"dnv.vegancraft.contains_animal_products\",\"fallback\":\"(Contains animal products)\",\"color\":\"red\",\"italic\":false}","{\"text\":\"Daenvil's Vegancraft\",\"color\":\"green\",\"italic\":true}"]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_copper_horn_dream 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count copper_horn_dream.count int 1 run scoreboard players get @s dnv.count.crafted_copper_horn_dream
function zz.dnv.vegancraft:slots/on_crafted_copper_horn_dream_replace_output with storage dnv.vegancraft:craft_count copper_horn_dream
scoreboard players set @s dnv.count.crafted_copper_horn_dream 0