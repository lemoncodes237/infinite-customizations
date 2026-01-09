data modify entity @s Item.components."minecraft:custom_data".inf_lunishield set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Lunishield]","bold":true,"italic":false,"color":"yellow"},{"text":" ","italic":false},{"text":"You have Resistance I during the Night, but","bold":false,"italic":false,"color":"blue"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"Hunger I during the Day.","bold":false,"italic":false,"color":"blue"}]