execute if score @s Loop matches 1..5 store result entity @s damage double 0.0092 run data get entity @s damage 100
execute if score @s Loop matches 6.. store result entity @s damage double 0.009 run data get entity @s damage 100

scoreboard players add @s Loop 1
execute if score @s Loop matches 10 run kill @s
#execute if predicate minecraft:bullet_zveroboj run function minecraft:gun/zveroboj/bullet