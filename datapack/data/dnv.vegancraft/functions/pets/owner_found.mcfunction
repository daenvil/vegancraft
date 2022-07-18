# Called by dnv.vegancraft:pets/search_owner
# @s = player whose uuid score matches new pet owner's uuid score

scoreboard players set dnv.dummy dnv.player_found 1
advancement grant @s only dnv.vegancraft:food/vegan_pets
advancement grant @s only dnv.vegancraft:root
advancement grant @s only minecraft:husbandry/tame_an_animal
execute if score dnv.dummy dnv.pet_type matches 2 run function dnv.omni_pets:cat/complete_catalogue