particle glow_squid_ink ~ ~ ~ 0.5 0 0.5 0 3
scoreboard players operation #tempid inf-id = @s inf-id
execute as @e[type=#infcust:enemies,distance=..2,predicate=!infcust:is_poison2] unless score @s inf-id = #tempid inf-id run effect give @s poison 5 1
execute as @e[type=#infcust:enemies,distance=..2] unless score @s inf-id = #tempid inf-id run effect give @s slowness 5 1

scoreboard players add @s inf-time 1

execute if score @s inf-time matches 6.. run kill @s