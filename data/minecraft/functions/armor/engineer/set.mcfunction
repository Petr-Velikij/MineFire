item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"Экзокостюм","color":"green","italic":false}',color:63487},HideFlags:71,Unbreakable:1b,CustomModelData:805,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1222610701,1204569741,-1223116533,-2027189604]}]} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Экзокостюм","color":"green","italic":false}',color:63487},HideFlags:71,Unbreakable:1b,CustomModelData:805,armor:5b,Enchantments:[{id:"minecraft:projectile_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-155777614,-840611621,-1346547053,165934121]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Экзокостюм","color":"green","italic":false}',color:63487},HideFlags:71,Unbreakable:1b,CustomModelData:805,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1704653202,809846555,-2089180153,480920378]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Экзокостюм","color":"green","italic":false}',color:63487},HideFlags:71,Unbreakable:1b,CustomModelData:805,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-375530549,2036682210,-2137043181,455719315]}]} 1
execute unless data entity @s Inventory[].tag.armor_active run give @s carrot_on_a_stick{display:{Name:'{"text":"Турель","color":"dark_purple","italic":false}',Lore:['{"text":"Время установки 4 секунды"}','{"text":"Перезарядка 90 секунд"}']},Unbreakable:1b,CustomModelData:715,armor_active:1} 1
tag @s add armor