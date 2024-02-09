effect give @a[distance=..2,gamemode=!spectator,scores={ID.armor=..8}] slowness 10 0 true
effect give @a[distance=..2,gamemode=!spectator,scores={ID.armor=..8}] slowness 2 1 true
scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add Owner
execute as @e[distance=..2,type=!#arrows,tag=!Owner,nbt=!{Fire:-20s}] run damage @s 2 on_fire
execute as @e[distance=..2,type=!#arrows,tag=!Owner] run damage @s 0.5 on_fire
tag @a remove Owner
particle minecraft:flame ~ ~ ~ 0 0 0 0.05 3 force @a[distance=..75]

execute if entity @s[nbt={inGround:1b}] run function armor/phoenix/fire/mat