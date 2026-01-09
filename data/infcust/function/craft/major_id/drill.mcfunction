data modify entity @s Item.components."minecraft:custom_data".inf_drill set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Drill]","bold":true,"italic":false,"color":"gray"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Breaking stone or deepslate destroys 5 more blocks in the","italic":false,"color":"dark_gray","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"direction you were facing.","italic":false,"color":"dark_gray","bold":false}]

# Lost to time - YYJayMC