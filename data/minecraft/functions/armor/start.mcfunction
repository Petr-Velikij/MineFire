execute store result score @s ID.armor run data get entity @s Inventory[{Slot:102b}].tag.armor
execute if score @s[tag=!armor] ID.armor matches 1.. run function armor/set
execute if score @s[tag=armor] ID.armor matches 1.. run function armor/global
execute if score @s[tag=armor] ID.armor matches 0 run function armor/remove