scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 book run function infcust:craft/ingredients/book
execute if items entity @s container.0 feather run function infcust:craft/ingredients/feather


scoreboard players operation #diamondrv inf-id = #rollvalue inf-id