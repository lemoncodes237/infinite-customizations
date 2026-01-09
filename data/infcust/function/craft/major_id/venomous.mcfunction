data modify entity @s Item.components."minecraft:custom_data".inf_venomous set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Venomous] ","italic":false,"color":"dark_green","bold":true},{"text":"Hit enemies are affected with Poison I for 10s.","italic":false,"color":"green","bold":false}]