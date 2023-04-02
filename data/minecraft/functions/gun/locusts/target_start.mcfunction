tag @s add NOtarget
scoreboard players set @s Loop 225
execute positioned ~ ~1.62 ~ run function gun/locusts/target_search
function gun/locusts/print
tag @a[gamemode=!spectator,tag=target] remove target
tag @s remove NOtarget