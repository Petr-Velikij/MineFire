execute store result score Ax varTime run data get entity @s Pos[0] 100
execute store result score Ay varTime run data get entity @s Pos[1] 100
execute store result score Az varTime run data get entity @s Pos[2] 100
#particle dust 1.000 0.300 0.000 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..150]
#tellraw Petr_l [{"text":"Ax="},{"score":{"name":"Ax","objective":"varTime"}},{"text":" Az="},{"score":{"name":"Az","objective":"varTime"}}]

execute store result score Bx varTime run data get entity @s Motion[0] 100
execute store result score By varTime run data get entity @s Motion[1] 100
execute store result score Bz varTime run data get entity @s Motion[2] 100
scoreboard players operation Bx varTime += Ax varTime
scoreboard players operation By varTime += Ay varTime
scoreboard players operation Bz varTime += Az varTime
summon area_effect_cloud ~ ~ ~ {Tags:["metka"]}
execute store result entity @e[type=area_effect_cloud,tag=metka,limit=1] Pos[0] double 0.01 run scoreboard players get Bx varTime
execute store result entity @e[type=area_effect_cloud,tag=metka,limit=1] Pos[1] double 0.01 run scoreboard players get By varTime
execute store result entity @e[type=area_effect_cloud,tag=metka,limit=1] Pos[2] double 0.01 run scoreboard players get Bz varTime
#execute at @e[type=area_effect_cloud,tag=metka,limit=1] run particle dust 0.169 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..150]
#tellraw Petr_l [{"text":"Bx="},{"score":{"name":"Bx","objective":"varTime"}},{"text":" Bz="},{"score":{"name":"Bz","objective":"varTime"}},{"text":" By="},{"score":{"name":"By","objective":"varTime"}}]

execute at @e[distance=..10,type=area_effect_cloud,tag=metka] run tag @p[gamemode=!spectator] add hit_test
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score Px varTime run data get entity @p[tag=hit_test] Pos[0] 100
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score Py varTime run data get entity @p[tag=hit_test] Pos[1] 100
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score Pz varTime run data get entity @p[tag=hit_test] Pos[2] 100
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score *1 varTime run data get entity @p[tag=hit_test] Motion[0] 100
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score *2 varTime run data get entity @p[tag=hit_test] Motion[1] 100
execute at @e[distance=..10,type=area_effect_cloud,tag=metka] store result score *3 varTime run data get entity @p[tag=hit_test] Motion[2] 100
scoreboard players operation Px varTime += *1 varTime
scoreboard players operation Py varTime += *2 varTime
scoreboard players operation Pz varTime += *3 varTime

scoreboard players operation ABx varTime = Bx varTime
scoreboard players operation ABx varTime -= Ax varTime
scoreboard players operation ABz varTime = Bz varTime
scoreboard players operation ABz varTime -= Az varTime
scoreboard players operation ABy varTime = By varTime
scoreboard players operation ABy varTime -= Ay varTime

scoreboard players operation k varTime = Px varTime
scoreboard players operation k varTime -= Ax varTime
scoreboard players operation k varTime *= ABx varTime
scoreboard players operation *1 varTime = Pz varTime
scoreboard players operation *1 varTime -= Az varTime
scoreboard players operation *1 varTime *= ABz varTime
scoreboard players operation k varTime += *1 varTime

scoreboard players operation *1 varTime = ABx varTime
scoreboard players operation *1 varTime *= ABx varTime
scoreboard players operation *2 varTime = ABz varTime
scoreboard players operation *2 varTime *= ABz varTime
scoreboard players operation *1 varTime += *2 varTime
scoreboard players operation k varTime *= *1000 CONST
scoreboard players operation k varTime /= *1 varTime

scoreboard players operation Cx varTime = Ax varTime
scoreboard players operation ABx varTime *= k varTime
scoreboard players operation ABx varTime /= *1000 CONST
scoreboard players operation Cx varTime += ABx varTime
scoreboard players operation Cz varTime = Az varTime
scoreboard players operation ABz varTime *= k varTime
scoreboard players operation ABz varTime /= *1000 CONST
scoreboard players operation Cz varTime += ABz varTime

scoreboard players operation Cy varTime = Ay varTime
scoreboard players operation ABy varTime *= k varTime
scoreboard players operation ABy varTime /= *1000 CONST
scoreboard players operation Cy varTime += ABy varTime

scoreboard players operation dx varTime = Cx varTime
scoreboard players operation dx varTime -= Px varTime
scoreboard players operation dz varTime = Cz varTime
scoreboard players operation dz varTime -= Pz varTime
scoreboard players operation dy varTime = Cy varTime
scoreboard players operation dy varTime -= Py varTime

scoreboard players set pos varTime 2
execute as @p[tag=hit_test] if predicate is_sneaking run scoreboard players set pos varTime 1

execute if entity @s[tag=amper] if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches -10..210 run function gun/arrow/gun/amper
execute if score dx varTime matches -65..65 if score dz varTime matches -65..65 if score dy varTime matches 0..220 run function gun/arrow/hit_marcer

execute if score pos varTime matches 2 unless score @s ArrowDamage matches 1 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches 81..210 run function gun/arrow/hit/torss
execute if score pos varTime matches 2 unless score @s ArrowDamage matches 2 if score dx varTime matches -50..50 if score dz varTime matches -50..50 if score dy varTime matches 140..210 run function gun/arrow/hit/head
execute if score pos varTime matches 2 unless score @s ArrowDamage matches 0 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches -10..80 run function gun/arrow/hit/legss

execute if score pos varTime matches 1 unless score @s ArrowDamage matches 1 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches 51..160 run function gun/arrow/hit/torss
execute if score pos varTime matches 1 unless score @s ArrowDamage matches 2 if score dx varTime matches -50..50 if score dz varTime matches -50..50 if score dy varTime matches 90..160 run function gun/arrow/hit/head
execute if score pos varTime matches 1 unless score @s ArrowDamage matches 0 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches -10..50 run function gun/arrow/hit/legss

execute if predicate bk if score pos varTime matches 2 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches 71..90 as @p[tag=hit_test] if score @s ID.module matches 8 at @s run function module/ammunition/explosion
execute if predicate bk if score pos varTime matches 1 if score dx varTime matches -70..70 if score dz varTime matches -70..70 if score dy varTime matches 40..60 as @p[tag=hit_test] if score @s ID.module matches 8 at @s run function module/ammunition/explosion
tag @p[tag=hit_test] remove hit_test
kill @e[distance=..10,type=area_effect_cloud,tag=metka]