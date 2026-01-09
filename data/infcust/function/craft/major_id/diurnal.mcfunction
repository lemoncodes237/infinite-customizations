data modify entity @s Item.components."minecraft:custom_data".inf_diurnal set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Diurnal] ","italic":false,"color":"gold","bold":true},{"text":"You have Strength I during the Day, but Weakness I","italic":false,"color":"yellow","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"during the Night.","italic":false,"color":"yellow","bold":false}]