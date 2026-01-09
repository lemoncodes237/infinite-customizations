data modify entity @s Item.components."minecraft:custom_data".inf_malady set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Malady]","bold":true,"italic":false,"color":"dark_green"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Create a noxious cloud where you walk that afflicts","italic":false,"color":"green","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"enemies with Slowness II and Poison II for 5s.","italic":false,"color":"green","bold":false}]