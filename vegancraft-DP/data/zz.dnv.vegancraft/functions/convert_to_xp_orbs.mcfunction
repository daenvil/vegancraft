kill @s
$summon experience_orb ~ ~ ~ {Value:$(count), Tags:[dnv.xp_ignore]}
$execute as @p run scoreboard players add @s dnv.xp_nerfer $(count)