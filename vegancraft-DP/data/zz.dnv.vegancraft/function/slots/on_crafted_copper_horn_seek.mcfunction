advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn_seek
tag @s add dnv.subject.crafted_copper_horn_seek
scoreboard players add @s dnv.count.crafted_copper_horn_seek 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_seek_delayed 1t append