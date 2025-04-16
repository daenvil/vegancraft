data modify entity @s Offers.Recipes append value {buy:{id:"string",count:20,components:{item_name:{translate:"dnv.ethical_textiles.item.plant_string",fallback:"Plant String",italic:false},lore:[{text:"Daenvil's Ethical Textiles",color:"#954535",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.ethical_textiles:plant_string"}},sell:{id:"emerald",count:1,components:{}},xp:2,maxUses:16,priceMultiplier:0.05}
data modify entity @s Offers.Recipes append value {buy:{id:"iron_ingot",count:6,components:{}},sell:{id:"emerald",count:1,components:{}},xp:4,maxUses:12,priceMultiplier:0.05}
tag @s add dnv.vegan_fisherman_novice
tag @s remove dnv.vegan_butcher_novice
tag @s remove dnv.vegan_cleric_novice
tag @s remove dnv.vegan_farmer_novice
tag @s remove dnv.vegan_fletcher_novice
tag @s remove dnv.vegan_leatherworker_novice
tag @s remove dnv.vegan_librarian_novice