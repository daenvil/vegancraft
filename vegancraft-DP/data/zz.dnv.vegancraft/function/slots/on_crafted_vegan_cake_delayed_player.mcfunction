tag @s remove dnv.subject.crafted_vegan_cake
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run scoreboard players set @s dnv.count.crafted_vegan_cake 0
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor cake run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item replace entity @s player.cursor with cake[custom_data={ "dnv.vegan": false }] 1
execute unless score @s dnv.success matches 0 run scoreboard players set @s dnv.count.crafted_vegan_cake 0
execute unless score @s dnv.success matches 0 run return 0
execute store result storage dnv.vegancraft:craft_count vegan_cake.count int 1 run scoreboard players get @s dnv.count.crafted_vegan_cake
function zz.dnv.vegancraft:slots/on_crafted_vegan_cake_replace_output with storage dnv.vegancraft:craft_count vegan_cake
scoreboard players set @s dnv.count.crafted_vegan_cake 0