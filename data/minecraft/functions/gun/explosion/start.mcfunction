#Оптимальная дистанция (1бл=10), это дистанция до которой нет падения урона
#scoreboard players set OptDist varTime 20
#Максимальная дистанция (1бл=10), это дистанция до которой можнр нанести урон
#scoreboard players set MaxDist varTime 50
#Урон, наносимый урон от взрыва x/10
#scoreboard players set Damage varTime 100
#Копировать название true/false
#scoreboard players set NameExplosion varTime 1

summon marker ~ ~0.1 ~ {Tags:["metka"]}
execute store result score Ax varTime run data get entity @e[type=marker,tag=metka,sort=nearest,limit=1] Pos[0] 10
execute store result score Ay varTime run data get entity @e[type=marker,tag=metka,sort=nearest,limit=1] Pos[1] 10
#scoreboard players remove Ay varTime 15
execute store result score Az varTime run data get entity @e[type=marker,tag=metka,sort=nearest,limit=1] Pos[2] 10

execute as @e[distance=..20,type=#target] at @s run function gun/explosion/test_dist
scoreboard players set *YR.correct varTime 0
scoreboard players set coefficient Random 0
execute at @e[type=marker,tag=metka,sort=nearest,limit=1] as @e[type=marker,distance=..20,tag=metka_player] run function gun/explosion/summon_arrow
execute as @e[tag=metka,sort=nearest,limit=1] positioned ~ ~-1 ~ at @e[type=#target,distance=..1.2] positioned ~ ~2.5 ~ run function gun/explosion/summon_arrow2

kill @e[tag=metka,limit=1,sort=nearest]