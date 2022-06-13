# called by function dnv.vegancraft:pets/search_feeder (on Omnivorous Pets datapack)
# @s = player who fed cat a vegan not-fish fillet with that datapack's mechanics

advancement grant @s only dnv.vegancraft:food/cat
scoreboard players set dnv.dummy dnv.player_found 1