advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn_ponder
tag @s add dnv.subject.crafted_copper_horn_ponder
scoreboard players add @s dnv.count.crafted_copper_horn_ponder 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_ponder_delayed 1t append