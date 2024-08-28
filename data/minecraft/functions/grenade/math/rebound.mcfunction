execute store result score *X varTime run data get entity @s Pos[0] 10
execute store result score *Y varTime run data get entity @s Pos[1] 10
execute store result score *Z varTime run data get entity @s Pos[2] 10

scoreboard players operation *X varTime %= *10 CONST
scoreboard players operation *Y varTime %= *10 CONST
scoreboard players operation *Z varTime %= *10 CONST

#tellraw @a [{"text": "Позиция ["},{"score":{"name":"*X","objective":"varTime"}},{"text": ","},{"score":{"name":"*Y","objective":"varTime"}},{"text": ","},{"score":{"name":"*Z","objective":"varTime"}},{"text": "]"}]
data merge entity @s {inGround:0b,SoundEvent:"item.flintandsteel.use"}
execute store result entity @s Motion[0] double 0.00008 run scoreboard players get @s varTimeEntity1
execute store result entity @s Motion[1] double 0.00008 run scoreboard players get @s varTimeEntity2
execute store result entity @s Motion[2] double 0.00008 run scoreboard players get @s varTimeEntity3

execute if score *X varTime matches 9 if score @s varTimeEntity1 matches 1.. unless block ~0.1 ~ ~ #no_collider store result entity @s Motion[0] double -0.00005 run scoreboard players get @s varTimeEntity1
execute if score *X varTime matches 0 if score @s varTimeEntity1 matches ..-1 unless block ~-0.1 ~ ~ #no_collider store result entity @s Motion[0] double -0.00005 run scoreboard players get @s varTimeEntity1

execute if score *Y varTime matches 9 if score @s varTimeEntity2 matches 1.. store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2
execute if score *Y varTime matches 4 if score @s varTimeEntity2 matches 1.. store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2
execute if score *Y varTime matches 5 if score @s varTimeEntity2 matches ..-1 store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2
execute if score *Y varTime matches 0 if score @s varTimeEntity2 matches ..-1 store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2

execute if score *Z varTime matches 9 if score @s varTimeEntity3 matches 1.. unless block ~ ~ ~0.1 #no_collider store result entity @s Motion[2] double -0.00005 run scoreboard players get @s varTimeEntity3
execute if score *Z varTime matches 0 if score @s varTimeEntity3 matches ..-1 unless block ~ ~ ~-0.1 #no_collider store result entity @s Motion[2] double -0.00005 run scoreboard players get @s varTimeEntity3