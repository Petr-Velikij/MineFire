tag @s add NOtarget
scoreboard players set @s Loop 200
execute positioned ~ ~1.62 ~ run function gun/makusya/target_search
tag @a[tag=target] remove target
tag @s remove NOtarget

scoreboard players remove @s Power 1