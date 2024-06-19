advancement revoke @s only zz.dnv.vegancraft:triggers/player_hurt_nonhostile_animal
advancement revoke @s only zz.dnv.vegancraft:triggers/player_bucketed_animal
advancement revoke @s only zz.dnv.vegancraft:triggers/player_sheared_animal
advancement revoke @s only zz.dnv.vegancraft:triggers/player_bowled_animal
advancement revoke @s only zz.dnv.vegancraft:triggers/player_sheared_beehive
advancement revoke @s only zz.dnv.vegancraft:triggers/player_bottled_beehive
scoreboard players set @s dnv.vegancraft.animal_lover_time 0
execute if entity @s[advancements={dnv.vegancraft:food/animal_lover=false}] run function zz.dnv.vegancraft:utils/revoke_animal_lover_criteria