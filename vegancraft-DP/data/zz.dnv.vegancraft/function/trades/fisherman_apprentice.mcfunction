data modify entity @s Offers.Recipes append value {buy:{id:"kelp",count:32,components:{}},sell:{id:"emerald",count:1,components:{}},xp:10,maxUses:16,priceMultiplier:0.05}
data modify entity @s Offers.Recipes append value {buy:{id:"honey_bottle",count:1,components:{item_name:{translate:"dnv.vegan_food.item.vegan_honey_bottle",fallback:"Vegan Honey",italic:false},lore:[{text:"Daenvil's Plant-based Foods",color:"dark_green",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.vegan_food:vegan_honey_bottle"}},buyB:{id:"emerald",count:2,components:{}},sell:{id:"salmon",count:6,components:{item_name:{translate:"dnv.vegan_food.item.notsalmon_fillet",fallback:"Not-salmon Fillet",italic:false},lore:[{text:"Daenvil's Plant-based Foods",color:"dark_green",italic:true}],food:{nutrition:6,saturation:9.6},custom_data:{dnv.vegan:true},item_model:"dnv.vegan_food:notsalmon_fillet"}},xp:10,maxUses:16,priceMultiplier:0.05}
tag @s add dnv.vegan_fisherman_apprentice
tag @s add dnv.not_butcher
tag @s add dnv.not_cleric
tag @s add dnv.not_farmer
tag @s add dnv.not_fletcher
tag @s add dnv.not_leatherworker
tag @s add dnv.not_librarian
tag @s add dnv.not_novice