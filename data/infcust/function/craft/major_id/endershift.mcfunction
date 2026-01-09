data modify entity @s Item.components."minecraft:custom_data".inf_endershift set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Endershift]","bold":true,"italic":false},{"text":" ","italic":false},{"text":"Right-click to teleport up to 10 blocks","bold":false,"italic":false,"color":"light_purple"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"in the direction you are facing in exchange for 1 heart.","bold":false,"italic":false,"color":"light_purple"}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"(10s cooldown)","bold":false,"italic":false,"color":"light_purple"}]

# Turn into food for right-click detection
data modify entity @s Item.components."minecraft:food" set value {nutrition:0,saturation:0,can_always_eat:true}
data modify entity @s Item.components."minecraft:consumable" set value {consume_seconds:2147483647}