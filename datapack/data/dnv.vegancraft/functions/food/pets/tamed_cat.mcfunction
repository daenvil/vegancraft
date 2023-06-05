# Triggered by advancement dnv.vegancraft:triggers/tamed_cat

advancement revoke @s only dnv.vegancraft:triggers/tamed_cat
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.fed_cat matches 1.. as @e[type=minecraft:cat,nbt={CollarColor:14b},sort=nearest,limit=1] run data modify entity @s CollarColor set value 5
#Just takes the nearest cat with default collar color. Checking if it has an owner is useless since sometimes this triggers *before* the "cat is fed" condition, it's not consistent.
#Ideally this would be raytraced, but for an irrelevant feature like this it isn't worth the effort.
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.fed_cat matches 1.. run advancement grant @s only dnv.vegancraft:food/vegan_pets
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.fed_cat matches 1.. run advancement grant @s only dnv.vegancraft:root
scoreboard players set @s dnv.just_tamed 1
# Marks the player for the next tick