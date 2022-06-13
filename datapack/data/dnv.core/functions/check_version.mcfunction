# Called on #load

# Save DataVersion in a player's score:

scoreboard objectives add dnv.game_version dummy
execute store result score @a[limit=1] dnv.game_version run data get entity @a[limit=1] DataVersion

function #dnv.core:version_checkers
scoreboard objectives remove dnv.game_version
