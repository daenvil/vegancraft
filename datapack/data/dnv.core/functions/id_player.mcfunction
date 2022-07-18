# @s = player which is not tagged with dnv.id
# Stores player's UUID in a scoreboard

execute store result score @s dnv.player_uuid run data get entity @s UUID[0]
tag @s add dnv.id