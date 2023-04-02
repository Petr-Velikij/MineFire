execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{gun:1b}}}] Item.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{gun:1b}}}] Item.tag
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{gun:1b}}}]

execute in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{},{},{}],Charged:0b}
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}
execute if score @s reload matches 0 run scoreboard players set @s reload -1