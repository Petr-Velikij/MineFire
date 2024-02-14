scoreboard players add @s varTimeEntity1 2000
execute if score @s varTimeEntity1 matches 90000.. run scoreboard players set @s varTimeEntity1 90000
scoreboard players operation *XR varTime = @s varTimeEntity1
scoreboard players operation *YR varTime = @s varTimeEntity2
function gun/arrow/gun/starfall/new/get_vec
execute store result entity @s Motion[0] double 0.0002 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get *Z varTime


particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..175]
execute if entity @s[tag=up] run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.05 3 force @a[distance=..175]

execute if score @s ArrowLive matches 15 run function gun/arrow/gun/starfall/new/spawn
execute if score @s ArrowLive matches 40 run function gun/arrow/gun/starfall/new/spawn

execute if entity @s[nbt={inGround:0b},tag=hitMarcer] run function gun/arrow/gun/starfall/hit
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/starfall/explosion

execute if score @s ArrowLive matches 200.. run kill @s