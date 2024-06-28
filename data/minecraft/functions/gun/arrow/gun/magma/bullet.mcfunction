execute if entity @s[tag=up] run function gun/arrow/gun/magma/up
execute if entity @s[tag=!up] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
execute if entity @s[nbt={inGround:0b},tag=hitMarcer] run function gun/arrow/gun/magma/hit
execute if score @s ArrowLive matches 15 run kill @s