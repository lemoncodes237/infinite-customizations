scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 book run function infcust:craft/ingredients/book
execute if items entity @s container.0 feather run function infcust:craft/ingredients/feather
execute if items entity @s container.0 horn_coral run function infcust:craft/ingredients/horn_coral
execute if items entity @s container.0 ominous_trial_key run function infcust:craft/ingredients/ominous_trial_key
execute if items entity @s container.0 closed_eyeblossom run function infcust:craft/ingredients/closed_eyeblossom
execute if items entity @s container.0 glow_lichen run function infcust:craft/ingredients/glow_lichen
execute if items entity @s container.0 lily_of_the_valley run function infcust:craft/ingredients/lily_of_the_valley
execute if items entity @s container.0 zombie_head run function infcust:craft/ingredients/zombie_head


scoreboard players operation #diamondrv inf-id = #rollvalue inf-id