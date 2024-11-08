advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_vegan_cake
tag @s add dnv.subject.crafted_vegan_cake
scoreboard players add @s dnv.count.crafted_vegan_cake 1
schedule function zz.dnv.vegancraft:slots/on_crafted_vegan_cake_delayed 1t append