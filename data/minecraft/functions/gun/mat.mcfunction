scoreboard players operation @s ammo = @s ammo_point
scoreboard players operation @s ammo /= @s price_cartridge
scoreboard players operation *1 varTime = @s ammo

execute if entity @s[gamemode=creative] run title @s times 0 10 4
execute if entity @s[gamemode=creative] run title @s title {"text":""}
execute if entity @s[gamemode=creative] run title @s subtitle [{"text":"Патрон ","color":"red"},{"score":{"name":"*1","objective":"varTime"}}]

scoreboard players set Max ammo 720
execute if score @s ID.module matches 7 run scoreboard players set Max ammo 2160

experience set @s 46 levels
experience set @s 0 points
scoreboard players operation *1 varTime = @s ammo_point
scoreboard players operation *1 varTime *= *100 CONST
scoreboard players operation *2 varTime = Max ammo
scoreboard players operation *2 varTime *= *100 CONST
scoreboard players operation *2 varTime /= *255 CONST
scoreboard players operation *1 varTime /= *2 varTime
scoreboard players operation *1 varTime < *255 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *128 CONST
execute if score *2 varTime matches 1.. run experience add @s 128 points
scoreboard players operation *1 varTime %= *128 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *64 CONST
execute if score *2 varTime matches 1 run experience add @s 64 points
scoreboard players operation *1 varTime %= *64 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *32 CONST
execute if score *2 varTime matches 1 run experience add @s 32 points
scoreboard players operation *1 varTime %= *32 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *16 CONST
execute if score *2 varTime matches 1 run experience add @s 16 points
scoreboard players operation *1 varTime %= *16 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *8 CONST
execute if score *2 varTime matches 1 run experience add @s 8 points
scoreboard players operation *1 varTime %= *8 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *4 CONST
execute if score *2 varTime matches 1 run experience add @s 4 points
scoreboard players operation *1 varTime %= *4 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *2 CONST
execute if score *2 varTime matches 1 run experience add @s 2 points
scoreboard players operation *1 varTime %= *2 CONST

execute if score *1 varTime matches 1 run experience add @s 1 points


experience set @s 511 levels
scoreboard players operation *1 varTime = @s ammo

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *256 CONST
execute if score *2 varTime matches 0 run experience add @s -256 levels
scoreboard players operation *1 varTime %= *256 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *128 CONST
execute if score *2 varTime matches 0 run experience add @s -128 levels
scoreboard players operation *1 varTime %= *128 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *64 CONST
execute if score *2 varTime matches 0 run experience add @s -64 levels
scoreboard players operation *1 varTime %= *64 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *32 CONST
execute if score *2 varTime matches 0 run experience add @s -32 levels
scoreboard players operation *1 varTime %= *32 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *16 CONST
execute if score *2 varTime matches 0 run experience add @s -16 levels
scoreboard players operation *1 varTime %= *16 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *8 CONST
execute if score *2 varTime matches 0 run experience add @s -8 levels
scoreboard players operation *1 varTime %= *8 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *4 CONST
execute if score *2 varTime matches 0 run experience add @s -4 levels
scoreboard players operation *1 varTime %= *4 CONST

scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime /= *2 CONST
execute if score *2 varTime matches 0 run experience add @s -2 levels
scoreboard players operation *1 varTime %= *2 CONST

execute if score *1 varTime matches 0 run experience add @s -1 levels