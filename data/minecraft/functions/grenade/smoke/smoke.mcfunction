particle minecraft:block_marker cobweb ~ ~1.5 ~ 2.5 1 2.5 0 7 force @a[distance=..250]
execute as @a[gamemode=!spectator,distance=..5] if score @s invisibility matches 0 if score @s Pos_delta matches ..15 run function grenade/smoke/give_invisibility
execute as @a[gamemode=!spectator,distance=..5] if score @s invisibility matches ..10 if score @s Pos_delta matches ..15 run scoreboard players set @s invisibility 11

scoreboard players operation *1 varTime = @s ArrowLive
scoreboard players operation *1 varTime %= *5 CONST
execute if score *1 varTime matches 2 run playsound block.fire.extinguish player @a[distance=..20] ~ ~ ~ 0.4 1