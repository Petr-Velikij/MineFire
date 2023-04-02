#расход
scoreboard players remove @s[scores={sprint_one_cm=1..,Pos_delta=20..}] stamina 4
scoreboard players remove @s[scores={jump=1..}] stamina 70

scoreboard players operation delta varTime = @s stamina
scoreboard players operation delta varTime -= @s stamina2

execute if score @s stamina_cooldown matches 1.. run scoreboard players remove @s stamina_cooldown 1
execute if score delta varTime matches ..-1 run scoreboard players set @s stamina_cooldown 30
execute if score @s stamina_cooldown matches 0 run scoreboard players add @s stamina 20

scoreboard players set @s[scores={stamina=..-1200}] stamina -1200
scoreboard players set @s[scores={stamina=1000..}] stamina 1000
scoreboard players operation @s stamina2 = @s stamina

#Дэбафы стамины
effect give @s[scores={stamina=-500..-100}] minecraft:slowness 1 0 true
effect give @s[scores={stamina=-800..-500}] minecraft:slowness 1 1 true
effect give @s[scores={stamina=-999..-800}] minecraft:slowness 1 2 true
effect give @s[scores={stamina=..-1000}] minecraft:slowness 1 3 true

#effect give @s[scores={stamina=..-800}] minecraft:blindness 2 0 true
#effect give @s[scores={stamina=..-600}] minecraft:nausea 4 0 true
#effect give @s[scores={stamina=..-1000}] minecraft:poison 3 1 true 

execute if entity @s[nbt={Air:300s}] run function minecraft:stamina/print
execute if entity @s[nbt=!{Air:300s}] run title @s actionbar ""