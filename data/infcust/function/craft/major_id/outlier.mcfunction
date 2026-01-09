data modify entity @s Item.components."minecraft:custom_data".inf_outlier set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Outlier]","bold":true,"italic":false,"color":"red"},{"text":" ","italic":false},{"text":"When you hit an enemy, you deal 0.5 more damage for every block","bold":false,"italic":false,"color":"gold"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"distance you are away from them.","bold":false,"italic":false,"color":"gold"}]