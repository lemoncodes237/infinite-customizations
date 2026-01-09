data modify entity @s Item.components."minecraft:custom_data".inf_detonate set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Detonate]","bold":true,"italic":false,"color":"green"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Kills explode and deal 10 damage to enemies within 7 blocks and","italic":false,"color":"gray","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"1 damage to yourself.","italic":false,"color":"gray","bold":false}]