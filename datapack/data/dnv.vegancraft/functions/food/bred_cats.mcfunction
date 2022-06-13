# Called on #dnv.core:bred_cats

scoreboard players set @s dnv.wolf_love 0
scoreboard players set @s dnv.ocelot_love 0
execute if score @s dnv.cat_love matches 2.. run advancement grant @s only dnv.vegancraft:food/breeding
execute if score @s dnv.cat_love matches 2.. run scoreboard players set @s dnv.cat_love 0

# dnv.cat_love acts as a counter of how many times you fed cats with vegan breeding food. So the logic is that if this function triggers when that counter is 2+, it should mean that you've just bred 2 cats.