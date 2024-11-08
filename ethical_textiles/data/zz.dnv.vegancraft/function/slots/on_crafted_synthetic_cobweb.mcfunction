advancement revoke @s only zz.dnv.vegancraft:triggers/crafted_synthetic_cobweb
tag @s add dnv.subject.crafted_synthetic_cobweb
scoreboard players add @s dnv.count.crafted_synthetic_cobweb 2
schedule function zz.dnv.vegancraft:slots/on_crafted_synthetic_cobweb_delayed 1t append