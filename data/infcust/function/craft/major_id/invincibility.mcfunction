data modify entity @s Item.components."minecraft:custom_data".inf_invincibility set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Invincibility]","bold":true,"italic":false,"color":"dark_gray"},{"text":" ","italic":false},{"text":"When you are below 5 hearts, you get Resistance II.","bold":false,"italic":false,"color":"gray"}]