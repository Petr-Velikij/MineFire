scoreboard players remove @s[scores={Anfisa=1..}] Anfisa 1
execute if score @s player_hurt matches 1 run tag @s add hit

execute if entity @s[tag=!hello] run function gun/anfisa/ii/hello
execute if score @s[tag=!ammo_no] ammo matches 0 if score @s Anfisa matches 0 run function gun/anfisa/ii/ammo_no
execute if score @s[tag=!ammo_low] ammo matches ..10 if score @s Anfisa matches 0 run function gun/anfisa/ii/ammo_low

execute if score @s modeFire matches 2 run function gun/anfisa/auto/ii