data merge entity @s {NoGravity:1b,damage:1d,crit:0b,PierceLevel:5b,Tags:["smoke_grenade","no_kill_arrow","grenade"],SoundEvent:"minecraft:item.flintandsteel.use"}
scoreboard players operation @s ID.Owner = buf ID.Owner
execute if score buf ID.armor matches 7 run tag @s add up
function grenade/set_motion