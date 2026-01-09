data modify entity @s Item.components."minecraft:custom_data".inf_sadistic set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Sadistic]","bold":true,"italic":false,"color":"dark_red"},{"text":" ","italic":false},{"text":"When an enemy within 10 blocks of you have Slowness,","bold":false,"italic":false,"color":"gold"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"you get Speed III for 5s.","bold":false,"italic":false,"color":"gold"}]