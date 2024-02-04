particle minecraft:dust 0.6 0 0.6 2 ~ ~ ~ 0 0 0 0.02 2 force @a[distance=..125]
execute if entity @s[tag=up] run particle minecraft:dust 0.7 0 0.7 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..125]

execute if score @s ArrowLive matches 5.. positioned ~ ~-1 ~ if entity @e[type=#target,distance=..3] at @s run function gun/arrow/gun/obsidian/explosion
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/obsidian/explosion