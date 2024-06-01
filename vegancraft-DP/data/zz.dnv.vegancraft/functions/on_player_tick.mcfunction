execute if score @s dnv.ate_nonvegan matches 1 run function zz.dnv.vegancraft:slots/on_ate_nonvegan_food_real
scoreboard players set @s dnv.ate_vegan_alt 0
execute if score @s dnv.vegancraft.deaths matches 1.. run function zz.dnv.vegancraft:slots/on_player_died
execute if entity @s[advancements={dnv.vegancraft:food/animal_lover=false}] if predicate {"condition":"entity_properties","entity": "this","predicate":{"vehicle":{"type":"#dnv.vegancraft:ridable_animals"}}} run function zz.dnv.vegancraft:utils/reset_animal_lover