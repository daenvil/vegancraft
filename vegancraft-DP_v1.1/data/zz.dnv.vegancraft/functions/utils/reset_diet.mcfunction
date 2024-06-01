scoreboard players set @s dnv.vegancraft.diet_time 0
execute if entity @s[advancements={dnv.vegancraft:food/diet=false}] run function zz.dnv.vegancraft:utils/revoke_diet_criteria
function zz.dnv.vegancraft:utils/reset_diet_alive
function zz.dnv.vegancraft:utils/reset_animal_lover
execute if entity @s[advancements={dnv.vegancraft:food/animal_lover=true}] run advancement grant @s only dnv.vegancraft:food/traitor