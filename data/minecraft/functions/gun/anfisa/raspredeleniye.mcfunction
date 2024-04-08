execute if score SelectedItem ID.gun matches 1 run function gun/anfisa/global
execute if score Offhand ID.gun matches 1 if score @s PKM_1 matches 1 run function gun/anfisa/mode_fire

execute if score SelectedItem ID.gun matches 0 run kill @e[type=armor_stand,tag=marcer_enemy2,distance=..5]