# Triggered by advancement dnv.vegancraft:triggers/fed_vegan_fish_to_ocelot

advancement revoke @s only dnv.vegancraft:triggers/fed_vegan_fish_to_ocelot
execute if score @s dnv.ocelot_love matches ..-2 run scoreboard players set @s dnv.ocelot_love -1
scoreboard players add @s dnv.ocelot_love 2