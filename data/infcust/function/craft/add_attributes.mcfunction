# Can't enchant or customize it anymore!
data modify entity @s Item.components."minecraft:enchantments" set value {}
data modify entity @s Item.components."minecraft:custom_data".inf_customized set value 1
data modify entity @s Item.components."minecraft:enchantments"."infcust:unenchantable" set value 1
data modify entity @s Item.components."minecraft:repair_cost" set value 10000

data modify storage infcust:attributes operation set value "add_value"

execute unless score #temp inf-hp matches 0 run data modify storage infcust:attributes type set value "max_health"
execute unless score #temp inf-hp matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-hp
execute unless score #temp inf-hp matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-armor matches 0 run data modify storage infcust:attributes type set value "armor"
execute unless score #temp inf-armor matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-armor
execute unless score #temp inf-armor matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-toughness matches 0 run data modify storage infcust:attributes type set value "armor_toughness"
execute unless score #temp inf-toughness matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-toughness
execute unless score #temp inf-toughness matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-kbres matches 0 run data modify storage infcust:attributes type set value "knockback_resistance"
execute unless score #temp inf-kbres matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-kbres
execute unless score #temp inf-kbres matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-atk matches 0 run data modify storage infcust:attributes type set value "attack_damage"
execute unless score #temp inf-atk matches 0 store result storage infcust:attributes amount int 0.1 run scoreboard players get #temp inf-atk
execute unless score #temp inf-atk matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-atkspd matches 0 run data modify storage infcust:attributes type set value "attack_speed"
execute unless score #temp inf-atkspd matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-atkspd
execute unless score #temp inf-atkspd matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-falldist matches 0 run data modify storage infcust:attributes type set value "safe_fall_distance"
execute unless score #temp inf-falldist matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-falldist
execute unless score #temp inf-falldist matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

# Percentage based

data modify storage infcust:attributes operation set value "add_multiplied_base"

execute unless score #temp inf-speed matches 0 run data modify storage infcust:attributes type set value "movement_speed"
execute unless score #temp inf-speed matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-speed
execute unless score #temp inf-speed matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-jump matches 0 run data modify storage infcust:attributes type set value "jump_strength"
execute unless score #temp inf-jump matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-jump
execute unless score #temp inf-jump matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

# Enchantments

data modify storage infcust:attributes header set value "minecraft"

data modify storage infcust:attributes enchantment set value "blast_protection"
execute unless score #temp inf-blastprot matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-blastprot
execute unless score #temp inf-blastprot matches 0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "fire_aspect"
execute unless score #temp inf-fireaspect matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-fireaspect
execute unless score #temp inf-fireaspect matches 0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "fortune"
execute unless score #temp inf-fortune matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-fortune
execute unless score #temp inf-fortune matches 0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "swift_sneak"
execute unless score #temp inf-swiftsneak matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-swiftsneak
execute unless score #temp inf-swiftsneak matches 0 run function infcust:craft/enchantment_macro with storage infcust:attributes

# Custom Enchantments

data modify storage infcust:attributes header set value "infcust"

data modify storage infcust:attributes enchantment set value "freeze_protection"
execute unless score #temp inf-freezeprot matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-freezeprot
execute unless score #temp inf-freezeprot matches 0 run function infcust:craft/enchantment_macro with storage infcust:attributes