summon marker ~ ~ ~ {Tags:["sound_ambient"]}
spreadplayers ~ ~ 30 30 false @e[type=marker,tag=sound_ambient,limit=1,distance=..100]
tag @s add PlayerSound
execute as @e[type=marker,tag=sound_ambient,limit=1,distance=..100] at @s run function sound/ambient/play
tag @s remove PlayerSound
scoreboard players set @s AmbientSound 0