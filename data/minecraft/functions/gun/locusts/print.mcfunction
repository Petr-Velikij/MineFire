title @s times 0 3 0
title @s title {"text":""}

execute if score @s Power matches 100 run title @s title {"text":"","color":"dark_red"}
execute if score @s Power matches 100 run title @s subtitle {"text":"no target","color":"dark_red"}
execute if score @s Power matches 101..125 run title @s title {"text":"/     \\","color":"dark_red"}
execute if score @s Power matches 126..150 run title @s title {"text":"/    \\","color":"dark_red"}
execute if score @s Power matches 151..175 run title @s title {"text":"/   \\","color":"dark_red"}
execute if score @s Power matches 176..199 run title @s title {"text":"/  \\","color":"dark_red"}
execute if score @s Power matches 200.. run title @s title {"text":"/ \\","color":"dark_red"}

scoreboard players operation buf ID.target = @s ID.target
execute as @a if score @s ID.Player = buf ID.target run tag @s add target
execute unless score @s ID.target matches 0 run title @s subtitle {"selector":"@p[tag=target]","color":"dark_red"}
execute unless score @s ID.target matches 0 run tag @a[gamemode=!spectator,tag=target] remove target