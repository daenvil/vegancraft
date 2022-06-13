# Called by user
# Enables/disables vegancraft features

execute if score dnv.dummy dnv.vegancraft matches 0 run scoreboard players set dnv.dummy dnv.vegancraft 2
execute if score dnv.dummy dnv.vegancraft matches 1 run scoreboard players set dnv.dummy dnv.vegancraft 0
execute if score dnv.dummy dnv.vegancraft matches 2 run scoreboard players set dnv.dummy dnv.vegancraft 1

execute if score dnv.dummy dnv.vegancraft matches 0 run tellraw @s {"text": "[Vegancraft] Vegancraft features were disabled.", "color": "red"}
execute if score dnv.dummy dnv.vegancraft matches 1 run tellraw @s {"text": "[Vegancraft] Vegancraft features were enabled.", "color": "green"}