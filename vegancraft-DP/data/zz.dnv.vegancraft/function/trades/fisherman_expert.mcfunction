data modify entity @s Offers.Recipes append value {buy:{id:"cooked_beef",count:6,components:{item_name:{translate:"dnv.vegan_food.item.seitan_steak",fallback:"Seitan Steak",italic:false},lore:[{text:"Daenvil's Plant-based Foods",color:"dark_green",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.vegan_food:seitan_steak"}},sell:{id:"emerald",count:1,components:{}},xp:30,maxUses:12,priceMultiplier:0.05}
data modify entity @s Offers.Recipes append value {buy:{id:"soul_sand",count:16,components:{}},sell:{id:"emerald",count:1,components:{}},xp:30,maxUses:12,priceMultiplier:0.05}
execute if predicate {condition:"random_chance",chance:0.5} run data modify entity @s Offers.Recipes append value {buy:{id:"emerald",count:48,components:{}},sell:{id:"heart_of_the_sea",count:1,components:{}},xp:30,maxUses:3,priceMultiplier:0.2}
tag @s add dnv.vegan_fisherman_expert
tag @s add dnv.not_butcher
tag @s add dnv.not_cleric
tag @s add dnv.not_farmer
tag @s add dnv.not_fletcher
tag @s add dnv.not_leatherworker
tag @s add dnv.not_librarian
tag @s add dnv.not_novice
tag @s add dnv.not_apprentice
tag @s add dnv.not_journeyman