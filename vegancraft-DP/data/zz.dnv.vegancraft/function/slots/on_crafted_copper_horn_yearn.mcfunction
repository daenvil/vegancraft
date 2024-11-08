advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn_yearn
tag @s add dnv.subject.crafted_copper_horn_yearn
scoreboard players add @s dnv.count.crafted_copper_horn_yearn 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_yearn_delayed 1t append