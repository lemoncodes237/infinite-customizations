scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 book run function infcust:craft/ingredients/book
execute if items entity @s container.0 feather run function infcust:craft/ingredients/feather
execute if items entity @s container.0 horn_coral run function infcust:craft/ingredients/horn_coral
execute if items entity @s container.0 ominous_trial_key run function infcust:craft/ingredients/ominous_trial_key


scoreboard players operation #diamondrv inf-id = #rollvalue inf-id