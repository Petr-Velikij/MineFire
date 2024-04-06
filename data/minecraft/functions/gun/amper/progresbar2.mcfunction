title @s times 0 3 5
execute if score MaxHeat varTime matches 1.. run title @s subtitle [{"score":{"name":"MaxHeat","objective":"varTime"}},{"text":"%"}]
execute if score MaxHeat varTime matches 0 run title @s subtitle [{"text":""}]
scoreboard players set MaxHeat varTime 0
execute if score @s Supply matches 0 run title @s title {"text":"\uE020","color": "#4e5c24"}
execute if score @s Supply matches 22 run title @s title {"text":"\uE021","color": "#4e5c24"}
execute if score @s Supply matches 21 run title @s title {"text":"\uE022","color": "#4e5c24"}
execute if score @s Supply matches 20 run title @s title {"text":"\uE023","color": "#4e5c24"}
execute if score @s Supply matches 18 run title @s title {"text":"\uE024","color": "#4e5c24"}
execute if score @s Supply matches 17 run title @s title {"text":"\uE025","color": "#4e5c24"}
execute if score @s Supply matches 15 run title @s title {"text":"\uE026","color": "#4e5c24"}
execute if score @s Supply matches 14 run title @s title {"text":"\uE027","color": "#4e5c24"}
execute if score @s Supply matches 12 run title @s title {"text":"\uE028","color": "#4e5c24"}
execute if score @s Supply matches 11 run title @s title {"text":"\uE029","color": "#4e5c24"}
execute if score @s Supply matches 10 run title @s title {"text":"\uE02A","color": "#4e5c24"}
execute if score @s Supply matches 8 run title @s title {"text":"\uE02B","color": "#4e5c24"}
execute if score @s Supply matches 7 run title @s title {"text":"\uE02C","color": "#4e5c24"}
execute if score @s Supply matches 6 run title @s title {"text":"\uE02D","color": "#4e5c24"}
execute if score @s Supply matches 5 run title @s title {"text":"\uE02E","color": "#4e5c24"}