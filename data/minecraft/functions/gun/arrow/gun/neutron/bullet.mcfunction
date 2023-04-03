execute if entity @s[tag=!up] run particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
execute if entity @s[tag=up] run function gun/arrow/gun/neutron/up

execute if score @s ArrowLive matches 50 run kill @s