scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_diamond_ingredients
function infcust:craft/armor/boots_ingredients

execute if items entity @s container.0 ink_sac run function infcust:craft/ingredients/ink_sac
execute if items entity @s container.0 pufferfish run function infcust:craft/ingredients/pufferfish
execute if items entity @s container.0 blue_orchid run function infcust:craft/ingredients/blue_orchid
execute if items entity @s container.0 mangrove_propagule run function infcust:craft/ingredients/mangrove_propagule
execute if items entity @s container.0 prismarine_shard run function infcust:craft/ingredients/prismarine_shard
execute if items entity @s container.0 sniffer_egg run function infcust:craft/ingredients/sniffer_egg
execute if items entity @s container.0 rabbit_foot run function infcust:craft/ingredients/rabbit_foot


scoreboard players operation #diamondrv inf-id = #rollvalue inf-id