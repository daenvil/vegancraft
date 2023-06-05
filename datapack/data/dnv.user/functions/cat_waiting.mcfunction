scoreboard players add dnv.dummy dnv.cat_waiting 1
execute if score dnv.dummy dnv.cat_waiting matches 2 run scoreboard players set dnv.dummy dnv.cat_waiting 0
execute if score dnv.dummy dnv.cat_waiting matches 0 run tellraw @s {"text": "[Omnivorous Pets] Cat waiting was disabled.", "color": "red"}
execute if score dnv.dummy dnv.cat_waiting matches 1 run tellraw @s {"text": "[Omnivorous Pets] Cat waiting was enabled.", "color": "green"}