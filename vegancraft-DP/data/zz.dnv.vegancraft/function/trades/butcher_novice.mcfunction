data modify entity @s Offers.Recipes append value {buy:{id:"emerald",count:1,components:{}},sell:{id:"rabbit_stew",count:1,components:{item_name:{translate:"dnv.vegan_food.item.seitan_stew",fallback:"Seitan Stew",italic:false},lore:[{text:"Daenvil's Plant-based Foods",color:"dark_green",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.vegan_food:seitan_stew"}},xp:2,maxUses:12,priceMultiplier:0.05}
data modify entity @s Offers.Recipes append value {buy:{id:"wheat",count:20,components:{}},sell:{id:"emerald",count:1,components:{}},xp:2,maxUses:16,priceMultiplier:0.05}
tag @s add dnv.vegan_butcher_novice
tag @s remove dnv.vegan_cleric_novice
tag @s remove dnv.vegan_farmer_novice
tag @s remove dnv.vegan_fisherman_novice
tag @s remove dnv.vegan_fletcher_novice
tag @s remove dnv.vegan_leatherworker_novice
tag @s remove dnv.vegan_librarian_novice