advancement revoke @s only zz.dnv.vegancraft:triggers/spawned_sulfur_cube
execute as @e[type=sulfur_cube,distance=..7,nbt={Age:0}] run tag @s add dnv.adult
execute as @n[type=sulfur_cube,tag=!dnv.adult,distance=..7] run data merge entity @s {id:"sulfur_cube",NoAI:true,Tags:["dnv.sulfur_cube","dnv.adult"],Age:0,Health:10,PersistenceRequired:true,CanPickUpLoot:false,AgeLocked:true}