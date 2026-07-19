execute as @e[type=sulfur_cube,tag=!dnv.sulfur_cube] if data entity @s from_bucket if data entity @s {CanPickUpLoot:0b,Age:0,AgeLocked:1b,PersistenceRequired:1b} at @s run function zz.dnv.vegancraft:fix_untagged_cube
execute as @e[type=sulfur_cube,tag=dnv.sulfur_cube] at @s run function zz.dnv.vegancraft:update_sulfur_cube
schedule function zz.dnv.vegancraft:sulfur_1s 1s