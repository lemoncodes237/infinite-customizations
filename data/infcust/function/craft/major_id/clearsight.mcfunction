data modify entity @s Item.components."minecraft:custom_data".inf_clearsight set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Clearsight] ","italic":false,"color":"yellow","bold":true},{"text":"Hit enemies are affected with Glowing for 10s.","italic":false,"color":"white","bold":false}]