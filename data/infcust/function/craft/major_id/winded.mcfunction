data modify entity @s Item.components."minecraft:custom_data".inf_winded set value 1

data modify entity @s Item.components."minecraft:lore" append value [{"text":""}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"[Winded]","bold":true,"italic":false,"color":"aqua"},{"text":" ","italic":false,"color":"dark_green"},{"text":"When you kill an enemy with Slowness, Wither, or Poison, the","italic":false,"color":"dark_gray","bold":false}]
data modify entity @s Item.components."minecraft:lore" append value [{"text":"effects spread to enemies within 5 blocks of them with potency 1 for 7s.","italic":false,"color":"dark_gray","bold":false}]