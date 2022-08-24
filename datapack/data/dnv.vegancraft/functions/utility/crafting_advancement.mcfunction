# Triggers when player interacts with a crafting table (#dnv.core:crafting_table_interaction)
# Just to grant the root advancements

advancement revoke @s only dnv.core:triggers/crafting_table_interaction
execute if score dnv.dummy dnv.vegancraft matches 1 run advancement grant @s until dnv.vegancraft:crafting