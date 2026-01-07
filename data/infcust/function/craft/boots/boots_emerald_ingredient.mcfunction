scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients
function infcust:craft/armor/boots_ingredients

execute if items entity @s container.0 ink_sac run function infcust:craft/ingredients/ink_sac
execute if items entity @s container.0 pufferfish run function infcust:craft/ingredients/pufferfish
execute if items entity @s container.0 blue_orchid run function infcust:craft/ingredients/blue_orchid
execute if items entity @s container.0 prismarine_shard run function infcust:craft/ingredients/prismarine_shard
execute if items entity @s container.0 sniffer_egg run function infcust:craft/ingredients/sniffer_egg


scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id