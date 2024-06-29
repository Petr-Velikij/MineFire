scoreboard players remove @s Loop 1
execute unless block ^ ^ ^0.33 #no_collider run summon marker ~ ~ ~ {Tags:["end_point"]}
execute if block ^ ^ ^0.33 #no_collider if score @s Loop matches 0 run summon marker ~ ~ ~ {Tags:["end_point"]}
execute if score @s Loop matches 1.. positioned ^ ^ ^0.33 if block ~ ~ ~ #no_collider run function pistol/cricket/spawn_marker