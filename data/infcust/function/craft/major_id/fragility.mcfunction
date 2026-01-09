data modify entity @s Item.components."minecraft:custom_data".inf_fragility set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Fragility] ","italic":false,"color":"gray","bold":true},{"text":"Hit enemies are affected with Weakness I for 5s.","italic":false,"color":"dark_aqua","bold":false}]