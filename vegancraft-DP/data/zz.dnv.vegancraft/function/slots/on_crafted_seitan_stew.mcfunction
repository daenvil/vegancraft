advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_seitan_stew
tag @s add dnv.subject.crafted_seitan_stew
scoreboard players add @s dnv.count.crafted_seitan_stew 1
schedule function zz.dnv.vegancraft:slots/on_crafted_seitan_stew_delayed 1t append