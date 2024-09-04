kill @e[tag=game_zone]
worldborder center 0 0
#worldborder set 550
worldborder set 50
scoreboard players set Время Zona 0
scoreboard players set Размер Zona 0
scoreboard players set Стадия Zona 0

gamemode adventure @a[gamemode=spectator,tag=Death]
tag @a[tag=Death] remove Death

effect clear @a
effect give @a minecraft:instant_health 1 9 true
effect give @a minecraft:saturation 1 29 true
function minecraft:restart
kill @e[type=minecraft:arrow]
kill @e[type=ender_pearl]
kill @e[type=minecraft:armor_stand,tag=!NO]
kill @e[type=minecraft:item,tag=!NO]
kill @e[type=minecraft:husk,tag=!NO]
kill @e[type=minecraft:wolf,tag=!NO]
kill @e[type=minecraft:phantom,tag=!NO]

tp @a[gamemode=!creative] -1 83 0
clear @a minecraft:potion
clear @a minecraft:carrot_on_a_stick{gren:1b}

execute if entity @s run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","bold":true,"color":"green"},{"selector":"@s","bold":true},{"text":" \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u043b \u0438\u0433\u0440\u0443","bold":true,"color":"green"}]
execute unless entity @s run tellraw @a {"text":"\u0418\u0433\u0440\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430","bold":true,"color":"green"}

setblock -3 75 14 oak_wall_sign[facing=north]{Text2:'{"text":"Вступить"}',Text3:'{"text":"в команду \\"A\\"","clickEvent":{"action":"run_command","value":"/function game/team/set_a"}}'} replace
setblock -5 75 14 oak_wall_sign[facing=north]{Text2:'{"text":"Вступить"}',Text3:'{"text":"в команду \\"B\\"","clickEvent":{"action":"run_command","value":"/function game/team/set_b"}}'} replace
setblock -3 74 14 oak_wall_sign[facing=north]{Text2:'{"text":"Вступить"}',Text3:'{"text":"в команду \\"C\\"","clickEvent":{"action":"run_command","value":"/function game/team/set_c"}}'} replace
setblock -5 74 14 oak_wall_sign[facing=north]{Text2:'{"text":"Вступить"}',Text3:'{"text":"в команду \\"D\\"","clickEvent":{"action":"run_command","value":"/function game/team/set_d"}}'} replace
data merge block 4 74 14 {Lock:""}
data merge block 6 74 14 {Lock:""}