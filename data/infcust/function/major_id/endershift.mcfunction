advancement revoke @s only infcust:endershift

scoreboard players operation #arg1 inf-id = @s inf-endershift-cooldown
execute unless score @s inf-endershift-cooldown <= #time inf-time run return run function infcust:cooldown

scoreboard players operation @s inf-endershift-cooldown = #time inf-time
scoreboard players add @s inf-endershift-cooldown 40

execute at @s anchored eyes run function infcust:major_id/endershift_teleport
execute at @s run playsound entity.enderman.teleport master @a ~ ~ ~
damage @s 2 infcust:no_armor by @s