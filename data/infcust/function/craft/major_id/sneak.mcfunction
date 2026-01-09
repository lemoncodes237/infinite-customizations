data modify entity @s Item.components."minecraft:custom_data".inf_sneak set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Sneak] ","italic":false,"color":"aqua","bold":true},{"text":"Affect yourself with Invisibility","italic":false,"color":"green","bold":false}]