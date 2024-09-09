scoreboard players add @p[gamemode=!spectator,distance=..1,tag=!NOtarget] Heat 10
scoreboard players operation MaxHeat varTime > @p[gamemode=!spectator,distance=..1,tag=!NOtarget] Heat
tag @p[gamemode=!spectator,distance=..1,tag=!NOtarget] add NOtarget
scoreboard players set *1 varTime 1