data modify entity @s Item.components."minecraft:custom_data".inf_helioshield set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Helioshield]","bold":true,"italic":false,"color":"yellow"},{"text":" ","italic":false},{"text":"You have Resistance I during the Day, but","bold":false,"italic":false,"color":"gold"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"Hunger I during the Night.","bold":false,"italic":false,"color":"gold"}]