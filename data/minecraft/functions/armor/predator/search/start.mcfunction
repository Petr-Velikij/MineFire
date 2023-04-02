scoreboard players set @s Loop 150
scoreboard players set *1 varTime 0
function armor/predator/search/loop
execute if score *1 varTime matches 1 run particle dust 1 1 0 1 ^ ^0.5 ^3 0 0 0 0 1 force @p 