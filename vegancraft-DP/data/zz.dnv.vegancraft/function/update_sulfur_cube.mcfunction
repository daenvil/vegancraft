execute if data entity @s equipment.body run data modify entity @n[type=sulfur_cube,tag=dnv.sulfur_cube] NoAI set value false
execute unless data entity @s equipment.body run data modify entity @n[type=sulfur_cube,tag=dnv.sulfur_cube] NoAI set value true
execute unless data entity @s equipment.body run data modify entity @n[type=sulfur_cube,tag=dnv.sulfur_cube] CanPickUpLoot set value false
execute unless data entity @s equipment.body run data modify entity @n[type=sulfur_cube,tag=dnv.sulfur_cube] Motion set value [0, 0, 0]
execute if data entity @s {Size:0} run tp @s ~ ~-1000 ~