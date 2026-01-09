data modify entity @s Item.components."minecraft:custom_data".inf_iatrophage set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Iatrophage]","bold":true,"italic":false,"color":"dark_green"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Killing an enemy afflicted with Slowness gives you","italic":false,"color":"blue","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"Saturation I for 5 seconds.","italic":false,"color":"blue","bold":false}]