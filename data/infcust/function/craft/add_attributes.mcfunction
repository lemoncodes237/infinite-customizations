# Can't enchant or customize it anymore!
data modify entity @s Item.components."minecraft:enchantments" set value {}
data modify entity @s Item.components."minecraft:custom_data".inf_customized set value 1
data modify entity @s Item.components."minecraft:enchantments"."infcust:unenchantable" set value 1
data modify entity @s Item.components."minecraft:repair_cost" set value 10000

data modify storage infcust:attributes operation set value "add_value"

execute unless score #temp inf-hp matches 0 run data modify storage infcust:attributes type set value "max_health"
execute unless score #temp inf-hp matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-hp
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
execute unless score #temp inf-atk matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-atk
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

execute unless score #temp inf-entityrange matches 0 run data modify storage infcust:attributes type set value "entity_interaction_range"
execute unless score #temp inf-entityrange matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-entityrange
execute unless score #temp inf-entityrange matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-blockrange matches 0 run data modify storage infcust:attributes type set value "block_interaction_range"
execute unless score #temp inf-blockrange matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-blockrange
execute unless score #temp inf-blockrange matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-scale matches 0 run data modify storage infcust:attributes type set value "scale"
execute unless score #temp inf-scale matches 0 store result storage infcust:attributes amount double -0.01 run scoreboard players get #temp inf-scale
execute unless score #temp inf-scale matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-gravity matches 0 run data modify storage infcust:attributes type set value "gravity"
execute unless score #temp inf-gravity matches 0 store result storage infcust:attributes amount double -0.01 run scoreboard players get #temp inf-gravity
execute unless score #temp inf-gravity matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

# Enchantments

data modify storage infcust:attributes header set value "minecraft"

data modify storage infcust:attributes enchantment set value "blast_protection"
execute unless score #temp inf-blastprot matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-blastprot
execute unless score #temp inf-blastprot matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "protection"
execute unless score #temp inf-prot matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-prot
execute unless score #temp inf-prot matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "projectile_protection"
execute unless score #temp inf-projprot matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-projprot
execute unless score #temp inf-projprot matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "fire_protection"
execute unless score #temp inf-fireprot matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-fireprot
execute unless score #temp inf-fireprot matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "unbreaking"
execute unless score #temp inf-unbreaking matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-unbreaking
execute unless score #temp inf-unbreaking matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "frost_walker"
execute unless score #temp inf-frostwalker matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-frostwalker
execute unless score #temp inf-frostwalker matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "mending"
execute unless score #temp inf-mending matches ..0 run data modify storage infcust:attributes amount set value 1
execute unless score #temp inf-mending matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "silk_touch"
execute unless score #temp inf-silktouch matches ..0 run data modify storage infcust:attributes amount set value 1
execute unless score #temp inf-silktouch matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "aqua_affinity"
execute unless score #temp inf-aquaaffinity matches ..0 run data modify storage infcust:attributes amount set value 1
execute unless score #temp inf-aquaaffinity matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "feather_falling"
execute unless score #temp inf-featherfalling matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-featherfalling
execute unless score #temp inf-featherfalling matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "thorns"
execute unless score #temp inf-thorns matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-thorns
execute unless score #temp inf-thorns matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "swift_sneak"
execute unless score #temp inf-swiftsneak matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-swiftsneak
execute unless score #temp inf-swiftsneak matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "respiration"
execute unless score #temp inf-respiration matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-respiration
execute unless score #temp inf-respiration matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "soul_speed"
execute unless score #temp inf-soulspeed matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-soulspeed
execute unless score #temp inf-soulspeed matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "depth_strider"
execute unless score #temp inf-depthstrider matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-depthstrider
execute unless score #temp inf-depthstrider matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "sharpness"
execute unless score #temp inf-sharpness matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-sharpness
execute unless score #temp inf-sharpness matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "fire_aspect"
execute unless score #temp inf-fireaspect matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-fireaspect
execute unless score #temp inf-fireaspect matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "knockback"
execute unless score #temp inf-knockback matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-knockback
execute unless score #temp inf-knockback matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "sweeping_edge"
execute unless score #temp inf-sweepingedge matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-sweepingedge
execute unless score #temp inf-sweepingedge matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "looting"
execute unless score #temp inf-looting matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-looting
execute unless score #temp inf-looting matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "efficiency"
execute unless score #temp inf-efficiency matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-efficiency
execute unless score #temp inf-efficiency matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "fortune"
execute unless score #temp inf-fortune matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-fortune
execute unless score #temp inf-fortune matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "swift_sneak"
execute unless score #temp inf-swiftsneak matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-swiftsneak
execute unless score #temp inf-swiftsneak matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

# Custom Enchantments

data modify storage infcust:attributes header set value "infcust"

data modify storage infcust:attributes enchantment set value "freeze_protection"
execute unless score #temp inf-freezeprot matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-freezeprot
execute unless score #temp inf-freezeprot matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "experience"
execute unless score #temp inf-experience matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-experience
execute unless score #temp inf-experience matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

data modify storage infcust:attributes enchantment set value "bane_of_the_nether"
execute unless score #temp inf-baneofthenether matches ..0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-baneofthenether
execute unless score #temp inf-baneofthenether matches ..0 run function infcust:craft/enchantment_macro with storage infcust:attributes

# Onto Major IDs
function infcust:craft/add_major_id