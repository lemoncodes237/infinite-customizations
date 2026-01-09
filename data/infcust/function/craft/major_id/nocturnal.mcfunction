data modify entity @s Item.components."minecraft:custom_data".inf_nocturnal set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Nocturnal] ","italic":false,"color":"dark_gray","bold":true},{"text":"You have Strength I during the Night, but Weakness I","italic":false,"color":"yellow","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"during the Day.","italic":false,"color":"yellow","bold":false}]