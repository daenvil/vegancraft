# Called by itself every 12k ticks, or by function dnv.vegancraft:food/load the first time

# Run actual function only if Vegancraft is enabled:
execute if score dnv.dummy dnv.vegancraft matches 1 as @a run function dnv.vegancraft:food/diet_score_check_real

# Trigger again half a day from now:
schedule function dnv.vegancraft:food/diet_score_check 12000 replace