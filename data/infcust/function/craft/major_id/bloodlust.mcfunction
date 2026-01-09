data modify entity @s Item.components."minecraft:custom_data".inf_bloodlust set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Bloodlust]","bold":true,"italic":false,"color":"dark_red"},{"text":" ","italic":false},{"text":"Kills give Absorption II and Regeneration I for 10s.","bold":false,"italic":false,"color":"red"}]