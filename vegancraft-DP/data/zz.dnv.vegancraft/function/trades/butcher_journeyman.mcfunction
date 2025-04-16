data modify entity @s Offers.Recipes append value {buy:{id:"emerald",count:1,components:{}},sell:{id:"cooked_beef",count:8,components:{item_name:{translate:"dnv.vegan_food.item.seitan_steak",fallback:"Seitan Steak",italic:false},lore:[{text:"Daenvil's Plant-based Foods",color:"dark_green",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.vegan_food:seitan_steak"}},xp:20,maxUses:16,priceMultiplier:0.05}
data modify entity @s Offers.Recipes append value {buy:{id:"brown_mushroom",count:7,components:{}},sell:{id:"emerald",count:1,components:{}},xp:20,maxUses:16,priceMultiplier:0.05}
tag @s add dnv.vegan_butcher_journeyman
tag @s add dnv.not_cleric
tag @s add dnv.not_farmer
tag @s add dnv.not_fisherman
tag @s add dnv.not_fletcher
tag @s add dnv.not_leatherworker
tag @s add dnv.not_librarian
tag @s add dnv.not_novice
tag @s add dnv.not_apprentice