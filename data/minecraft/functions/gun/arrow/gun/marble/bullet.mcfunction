execute if entity @s[tag=up] run function gun/arrow/gun/marble/up
execute if entity @s[tag=!up] run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
execute if score @s ArrowLive matches 20 run kill @s