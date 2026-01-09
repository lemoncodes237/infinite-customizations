execute unless predicate infcust:is_regen1 run effect give @s regeneration 10 0 true

execute if score @s inf-absorption-time >= #time inf-time run return 0

effect give @s absorption 10 1 true

# Trolling bc cooldown is 15s eheheheh
scoreboard players operation @s inf-absorption-time = #time inf-time
scoreboard players add @s inf-absorption-time 300