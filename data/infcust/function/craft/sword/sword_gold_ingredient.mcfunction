scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 fire_charge run function infcust:craft/ingredients/fire_charge
execute if items entity @s container.0 crimson_fungus run function infcust:craft/ingredients/crimson_fungus
execute if items entity @s container.0 blaze_rod run function infcust:craft/ingredients/blaze_rod
execute if items entity @s container.0 dragon_breath run function infcust:craft/ingredients/dragon_breath

scoreboard players operation #goldrv inf-id = #rollvalue inf-id