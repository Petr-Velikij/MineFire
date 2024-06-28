scoreboard players add @s Loop 1
execute if score @s Loop matches 2.. rotated ~ 0 if block ^ ^ ^0.5 #no_collider run tp @s ^ ^ ^0.2
execute at @s if block ~ ~-0.1 ~ #no_collider run tp @s ~ ~-0.1 ~
execute if score @s Loop matches 400 run kill @s