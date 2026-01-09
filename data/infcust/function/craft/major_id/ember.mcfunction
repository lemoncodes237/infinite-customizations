data modify entity @s Item.components."minecraft:custom_data".inf_ember set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Ember]","bold":true,"italic":false,"color":"red"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Enemies within 10 blocks on fire also get Slowness II and Weakness I.","italic":false,"color":"yellow","bold":false}]