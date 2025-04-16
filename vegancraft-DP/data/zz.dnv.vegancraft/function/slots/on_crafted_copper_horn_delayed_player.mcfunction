tag @s remove dnv.subject.crafted_copper_horn
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_copper_horn 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor goat_horn run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item modify entity @s player.cursor {"function":"set_components","components":{"custom_data":{"dnv.vegan":false},"instrument":"ponder_goat_horn","item_model":"dnv.vegancraft:copper_horn","item_name":{"fallback":"Copper Horn","italic":false,"translate":"dnv.vegancraft.item.copper_horn"},"lore":[{"color":"red","fallback":"(Contains animal products)","italic":false,"translate":"dnv.vegancraft.contains_animal_products"},{"color":"green","italic":true,"text":"Daenvil's Vegancraft"}]}}
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_copper_horn 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count copper_horn.count int 1 run scoreboard players get @s dnv.count.crafted_copper_horn
function zz.dnv.vegancraft:slots/on_crafted_copper_horn_replace_output with storage dnv.vegancraft:craft_count copper_horn
scoreboard players set @s dnv.count.crafted_copper_horn 0