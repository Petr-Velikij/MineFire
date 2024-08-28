#scoreboard players operation @s MoveSound += @s crouch_one_cm
scoreboard players operation @s MoveSound += @s sprint_one_cm
scoreboard players operation @s MoveSound += @s walk_one_cm
execute if score @s MoveSound matches 150.. run function sound/step
execute if score @s jump matches 1 run function sound/jump

scoreboard players add @s AmbientSound 1
execute if score @s AmbientSound matches 100 run function sound/ambient/start