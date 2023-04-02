execute if score @s ArrowLive matches 60 run function armor/grenadier/distorting_grenades/start
execute if score @s ArrowLive matches 60.. run function armor/grenadier/distorting_grenades/effect
playsound minecraft:ambient.crimson_forest.mood player @a[distance=..30] ~ ~ ~ 1 1
particle minecraft:crimson_spore ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[distance=..100]
execute if score @s ArrowLive matches 200 run kill @s