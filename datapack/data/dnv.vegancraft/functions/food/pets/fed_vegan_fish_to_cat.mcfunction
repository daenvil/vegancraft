# Triggered by advancement dnv.vegancraft:triggers/fed_vegan_fish_to_cat
# Makes the collar color of a cat tamed with vegan fish green

advancement revoke @s only dnv.vegancraft:triggers/fed_vegan_fish_to_cat
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.just_tamed matches 1.. as @e[type=minecraft:cat,nbt={CollarColor:14b},sort=nearest,limit=1] run data modify entity @s CollarColor set value 5
#Just takes the nearest cat with default collar color. Checking if it has an owner is useless since sometimes this triggers *after* the cat is tamed, it's not consistent.
#Ideally this would be raytraced, but for an irrelevant feature like this it isn't worth the effort.
scoreboard players set @s dnv.fed_cat 1
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.just_tamed matches 1.. run advancement grant @s only dnv.vegancraft:food/vegan_pets
execute if score dnv.dummy dnv.vegancraft matches 1 if score @s dnv.just_tamed matches 1.. run advancement grant @s only dnv.vegancraft:root

#For breeding:
execute if score @s dnv.cat_love matches ..-2 run scoreboard players set @s dnv.cat_love -1
scoreboard players add @s dnv.cat_love 2