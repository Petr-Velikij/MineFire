scoreboard players operation @s ammo = @s ammo_point
scoreboard players operation @s ammo /= @s price_cartridge
scoreboard players operation *1 varTime = @s ammo

title @s times 0 10 4
title @s title {"text":""}
title @s subtitle [{"text":"Патрон ","color":"red"},{"score":{"name":"*1","objective":"varTime"}}]