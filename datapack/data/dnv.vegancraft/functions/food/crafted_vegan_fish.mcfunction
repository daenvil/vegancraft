# Called by dnv.vegancraft:food/recipes/cod
# @s = player who crafted
# Gives the appropiate item and reduces score dnv.seitans by 1, to take into account the case where the player is crafting multiple times one after the other

give @s minecraft:cod{display:{Name:'[{"translate":"dnv.vegan_food.item.not-fish_fillet","italic":false}]'},dnv.Vegan:1b,CustomModelData:9261004} 3
scoreboard players remove @s dnv.seitans 1
advancement grant @s only dnv.vegancraft:food/fish