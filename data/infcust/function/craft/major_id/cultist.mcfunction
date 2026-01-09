data modify entity @s Item.components."minecraft:custom_data".inf_cultist set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Cultist]","bold":true,"italic":false,"color":"dark_gray"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Get Strength level equal to the number of enemies within","italic":false,"color":"red","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"10 blocks of you who are affected by Wither (max 5).","italic":false,"color":"red","bold":false}]