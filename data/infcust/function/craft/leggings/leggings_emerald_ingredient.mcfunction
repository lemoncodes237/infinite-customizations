scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients
function infcust:craft/armor/leggings_ingredients

execute if items entity @s container.0 string run function infcust:craft/ingredients/string
execute if items entity @s container.0 paper run function infcust:craft/ingredients/paper
execute if items entity @s container.0 rabbit_hide run function infcust:craft/ingredients/rabbit_hide
execute if items entity @s container.0 lily_pad run function infcust:craft/ingredients/lily_pad
execute if items entity @s container.0 spruce_sapling run function infcust:craft/ingredients/spruce_sapling
execute if items entity @s container.0 turtle_scute run function infcust:craft/ingredients/turtle_scute
execute if items entity @s container.0 echo_shard run function infcust:craft/ingredients/echo_shard

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id