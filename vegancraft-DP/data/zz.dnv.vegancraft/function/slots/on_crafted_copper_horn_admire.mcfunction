advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn_admire
tag @s add dnv.subject.crafted_copper_horn_admire
scoreboard players add @s dnv.count.crafted_copper_horn_admire 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_admire_delayed 1t append