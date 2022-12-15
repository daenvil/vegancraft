# Triggers when player interacts with a crafting table (#dnv.core:triggers/interacted_with_crafting_table)
# Just to grant the root advancements

advancement revoke @s only dnv.core:triggers/interacted_with_crafting_table
execute if score dnv.dummy dnv.vegancraft matches 1 run advancement grant @s until dnv.vegancraft:crafting