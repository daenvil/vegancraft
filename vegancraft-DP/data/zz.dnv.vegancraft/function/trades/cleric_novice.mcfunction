data modify entity @s Offers.Recipes append value {buy:{id:"phantom_membrane",count:8,components:{item_name:{translate:"dnv.vegancraft.item.feathery_membrane",fallback:"Feathery Membrane",italic:false},lore:[{translate:"dnv.vegancraft.feathery_membrane.lore",fallback:"(Use as phantom membrane)",italic:false},{text:"Daenvil's Vegancraft",color:"green",italic:true}],custom_data:{dnv.vegan:true},item_model:"dnv.vegancraft:feathery_membrane"}},sell:{id:"emerald",count:1,components:{}},xp:2,maxUses:16,priceMultiplier:0.05}
tag @s add dnv.vegan_cleric_novice
tag @s remove dnv.vegan_butcher_novice
tag @s remove dnv.vegan_farmer_novice
tag @s remove dnv.vegan_fisherman_novice
tag @s remove dnv.vegan_fletcher_novice
tag @s remove dnv.vegan_leatherworker_novice
tag @s remove dnv.vegan_librarian_novice