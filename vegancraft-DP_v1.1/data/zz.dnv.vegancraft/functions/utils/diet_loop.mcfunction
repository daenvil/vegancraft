execute as @a[advancements={dnv.vegancraft:food/diet=false}] at @s run function zz.dnv.vegancraft:utils/grant_diet_criteria
execute as @a[advancements={dnv.vegancraft:food/diet_alive=false}] at @s run function zz.dnv.vegancraft:utils/grant_diet_alive_criteria
execute as @a[advancements={dnv.vegancraft:food/animal_lover=false}] at @s run function zz.dnv.vegancraft:utils/grant_animal_lover_criteria
schedule function zz.dnv.vegancraft:utils/diet_loop 4000 replace