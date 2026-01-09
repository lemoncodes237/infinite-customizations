data modify entity @s Item.components."minecraft:custom_data".inf_photophage set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Photophage]","bold":true,"italic":false,"color":"gold"},{"text":" ","italic":false},{"text":"When you kill an enemy afflicted with Glowing, you get","bold":false,"italic":false,"color":"yellow"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"Regeneration II for 5s.","bold":false,"italic":false,"color":"yellow"}]