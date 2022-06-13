# Called on #load
# Sets vegancraft as installed if it's the first time loading it

scoreboard objectives add dnv.vegancraft dummy
execute unless score dnv.dummy dnv.vegancraft matches 0..1 run scoreboard players set dnv.dummy dnv.vegancraft 1