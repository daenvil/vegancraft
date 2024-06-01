tag @s remove dnv.subject.crafted_vegan_cake
execute store success score @s dnv.success run tag @s remove dnv.crafted_vegan
execute if score @s dnv.success matches 1 run return 0
execute if items entity @s player.cursor cake run scoreboard players set @s dnv.success 1
execute unless score @s dnv.success matches 0 run item replace entity @s player.cursor with cake 1
execute unless score @s dnv.success matches 0 run return 0
execute store success score @s dnv.success run clear @s cake[custom_data~{dnv.vegan:true}] 1
execute unless score @s dnv.success matches 0 run give @s cake