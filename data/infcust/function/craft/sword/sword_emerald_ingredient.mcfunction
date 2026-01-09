scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 book run function infcust:craft/ingredients/book
execute if items entity @s container.0 feather run function infcust:craft/ingredients/feather
execute if items entity @s container.0 spider_eye run function infcust:craft/ingredients/spider_eye
execute if items entity @s container.0 fermented_spider_eye run function infcust:craft/ingredients/fermented_spider_eye
execute if items entity @s container.0 closed_eyeblossom run function infcust:craft/ingredients/closed_eyeblossom
execute if items entity @s container.0 glow_lichen run function infcust:craft/ingredients/glow_lichen
execute if items entity @s container.0 lily_of_the_valley run function infcust:craft/ingredients/lily_of_the_valley
execute if items entity @s container.0 bell run function infcust:craft/ingredients/bell
execute if items entity @s container.0 zombie_head run function infcust:craft/ingredients/zombie_head


scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id