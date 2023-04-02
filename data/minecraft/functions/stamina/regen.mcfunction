scoreboard players add @s stamina 5
scoreboard players remove @s[scores={sprint_one_cm=1..}] stamina 13
scoreboard players remove @s[scores={jump=1..}] stamina 150
scoreboard players set @s[scores={stamina=..-1200}] stamina -1200
scoreboard players set @s[scores={stamina=1000..}] stamina 1000


effect give @s[scores={stamina=-500..-100}] minecraft:slowness 1 0 true
effect give @s[scores={stamina=-800..-500}] minecraft:slowness 1 1 true
effect give @s[scores={stamina=-999..-800}] minecraft:slowness 1 2 true
effect give @s[scores={stamina=..-1000}] minecraft:slowness 1 3 true

effect give @s[scores={stamina=..-800}] minecraft:blindness 2 0 true
effect give @s[scores={stamina=..-600}] minecraft:nausea 4 0 true
effect give @s[scores={stamina=..-1000}] minecraft:poison 3 1 true 

execute if entity @s[nbt={Air:300s}] run function minecraft:stamina/print
execute if entity @s[nbt=!{Air:300s}] run title @s actionbar ""