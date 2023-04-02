playsound custom.gun.anfisa.go_shot voice @s ~ ~ ~ 1 1.15
scoreboard players set @s Anfisa 50
scoreboard players set coefficient Random 2
function random/number
scoreboard players operation @s Anfisa += Output Random
execute if score Output Random matches 96.. run function gun/anfisa/shot3
execute if score Output Random matches 96.. run stopsound @s voice
execute if score Output Random matches 96.. run playsound custom.gun.anfisa.shot_yes voice @s ~ ~ ~ 1 1.15