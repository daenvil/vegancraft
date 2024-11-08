advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_copper_horn_call
tag @s add dnv.subject.crafted_copper_horn_call
scoreboard players add @s dnv.count.crafted_copper_horn_call 1
schedule function zz.dnv.vegancraft:slots/on_crafted_copper_horn_call_delayed 1t append