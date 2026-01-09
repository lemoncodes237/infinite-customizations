data modify entity @s Item.components."minecraft:custom_data".inf_withering set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Withering]","bold":true,"italic":false,"color":"gray"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Hit enemies are inflicted with Wither I for 10s.","italic":false,"color":"dark_gray","bold":false}]