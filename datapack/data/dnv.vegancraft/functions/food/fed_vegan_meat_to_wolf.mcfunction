# Triggered by advancement dnv.vegancraft:triggers/fed_vegan_meat_to_wolf

advancement revoke @s only dnv.vegancraft:triggers/fed_vegan_meat_to_wolf
execute if score @s dnv.wolf_love matches ..-2 run scoreboard players set @s dnv.wolf_love -1
scoreboard players add @s dnv.wolf_love 2