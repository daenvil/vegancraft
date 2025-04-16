data modify entity @s Offers.Recipes append value {buy:{id:"leather",count:6,components:{item_name:{translate:"dnv.ethical_textiles.item.faux_leather",fallback:"Faux Leather",italic:false},lore:[{text:"Daenvil's Ethical Textiles",color:"#954535",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.ethical_textiles:faux_leather"}},sell:{id:"emerald",count:1,components:{}},xp:2,maxUses:16,priceMultiplier:0.05}
tag @s add dnv.vegan_leatherworker_novice
tag @s remove dnv.vegan_butcher_novice
tag @s remove dnv.vegan_cleric_novice
tag @s remove dnv.vegan_farmer_novice
tag @s remove dnv.vegan_fisherman_novice
tag @s remove dnv.vegan_fletcher_novice
tag @s remove dnv.vegan_librarian_novice