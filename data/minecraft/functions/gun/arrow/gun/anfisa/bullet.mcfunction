execute unless score @s ID.target matches 0 run function gun/arrow/gun/anfisa/target

scoreboard players set coefficient Random 25

execute store result score *1 varTime run data get entity @s Motion[0] 10000
function gun/arrow/gun/anfisa/random
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get *1 varTime

execute store result score *1 varTime run data get entity @s Motion[1] 10000
function gun/arrow/gun/anfisa/random
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

execute store result score *1 varTime run data get entity @s Motion[2] 10000
function gun/arrow/gun/anfisa/random
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get *1 varTime