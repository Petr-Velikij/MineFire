function gun/arrow/gun/makusya/target

scoreboard players set Damage varTime 120
scoreboard players operation Damage varTime += @s ArrowLive
execute if score Damage varTime matches 240.. run scoreboard players set Damage varTime 240
execute store result entity @s damage double 0.01 run scoreboard players get Damage varTime

playsound block.fire.extinguish player @a[distance=..50] ~ ~ ~ 3.2 2
particle minecraft:smoke ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..175]
execute if entity @s[tag=up] run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[distance=..75]
execute if entity @s[nbt={inGround:0b},tag=hitMarcer] run function gun/arrow/gun/makusya/hit
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/makusya/explosion
execute if score @s ArrowLive matches 199 run function gun/arrow/gun/makusya/explosion