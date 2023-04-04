function gun/arrow/gun/makusya/target

playsound block.fire.extinguish player @a[distance=..50] ~ ~ ~ 3.2 2
particle minecraft:smoke ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..175]
execute if entity @s[tag=up] run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[distance=..75]
execute if entity @s[nbt={inGround:0b},tag=hitMarcer] run function gun/arrow/gun/makusya/hit
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/makusya/explosion
execute if score @s ArrowLive matches 199 run function gun/arrow/gun/makusya/explosion