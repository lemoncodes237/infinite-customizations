data modify entity @s Item.components."minecraft:custom_data".inf_aquavigor set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Aquavigor]","bold":true,"italic":false,"color":"aqua"},{"text":" ","italic":false},{"text":"When you are in water, you gain +2 Attack Damage.","bold":false,"italic":false,"color":"blue"}]