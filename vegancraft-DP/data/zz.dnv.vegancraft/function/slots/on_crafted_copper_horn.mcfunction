advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn
tag @s add dnv.subject.crafted_copper_horn
scoreboard players add @s dnv.count.crafted_copper_horn 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_delayed 1t append