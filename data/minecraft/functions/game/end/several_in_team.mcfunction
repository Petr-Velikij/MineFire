scoreboard players set Стадия Zona 3
scoreboard players set Время Zona 7

title @a times 10 60 10
execute if entity @s[team=A] run title @a subtitle {"selector":"@a[team=A]"}
execute if entity @s[team=A] run title @a title ["",{"text":"\u041a\u043e\u043c\u0430\u043d\u0434\u0430 "},{"selector":"@r[team=A,gamemode=!spectator]"},{"text":" \u0432\u044b\u0438\u0433\u0440\u0430\u043b\u0430"}]

execute if entity @s[team=B] run title @a subtitle {"selector":"@a[team=B]"}
execute if entity @s[team=B] run title @a title ["",{"text":"\u041a\u043e\u043c\u0430\u043d\u0434\u0430 "},{"selector":"@r[team=B,gamemode=!spectator]"},{"text":" \u0432\u044b\u0438\u0433\u0440\u0430\u043b\u0430"}]

execute if entity @s[team=C] run title @a subtitle {"selector":"@a[team=C]"}
execute if entity @s[team=C] run title @a title ["",{"text":"\u041a\u043e\u043c\u0430\u043d\u0434\u0430 "},{"selector":"@r[team=C,gamemode=!spectator]"},{"text":" \u0432\u044b\u0438\u0433\u0440\u0430\u043b\u0430"}]

execute if entity @s[team=D] run title @a subtitle {"selector":"@a[team=D]"}
execute if entity @s[team=D] run title @a title ["",{"text":"\u041a\u043e\u043c\u0430\u043d\u0434\u0430 "},{"selector":"@r[team=D,gamemode=!spectator]"},{"text":" \u0432\u044b\u0438\u0433\u0440\u0430\u043b\u0430"}]

execute if entity @s[team=E] run title @a subtitle {"selector":"@a[team=E]"}
execute if entity @s[team=E] run title @a title ["",{"text":"\u041a\u043e\u043c\u0430\u043d\u0434\u0430 "},{"selector":"@r[team=E,gamemode=!spectator]"},{"text":" \u0432\u044b\u0438\u0433\u0440\u0430\u043b\u0430"}]

scoreboard players set Размер Zona 0
worldborder center 0 0
worldborder set 550