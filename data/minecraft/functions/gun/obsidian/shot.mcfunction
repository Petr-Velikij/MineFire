execute if score @s Power matches 100 run playsound block.ender_chest.open player @a[distance=..30] ~ ~ ~ 3.7 1.5
execute if score @s Power matches 101..150 run playsound block.ender_chest.open player @a[distance=..30] ~ ~ ~ 3.7 1.1
execute if score @s Power matches 151.. run playsound block.ender_chest.open player @a[distance=..30] ~ ~ ~ 3.7 0.8

scoreboard players set aiming Random 15
scoreboard players set from_hip Random 30
scoreboard players set running Random 90
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf Power = @s Power
execute if score @s Power matches 100..124 as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/obsidian/shot2
execute if score @s Power matches 125.. as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/obsidian/shot2exp

execute if score @s Power matches 125.. run scoreboard players set @s Supply 20
execute if score buf ID.module matches 1 run scoreboard players add @s Supply 5
function minecraft:gun/obsidian/remove_ammo

scoreboard players set @s Power 100

execute if score @s modeFire matches 1 run tp @s ~ ~ ~ ~ ~-1
execute if score @s modeFire matches 2 run tp @s ~ ~ ~ ~2 ~-7