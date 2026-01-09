data modify entity @s Item.components."minecraft:custom_data".inf_subterranean set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Subterranean]","bold":true,"italic":false,"color":"gray"},{"text":" ","italic":false},{"text":"When you are below Y-level 0, you have Resistance II.","bold":false,"italic":false,"color":"dark_gray"}]