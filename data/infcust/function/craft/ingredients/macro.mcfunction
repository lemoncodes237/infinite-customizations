$execute store result score #amount inf-id run random value $(min)..$(max)
$scoreboard players operation #temp $(stat) += #amount inf-id
$scoreboard players $(operation) #amount inf-id $(absmin)
scoreboard players operation #amount inf-id *= #hundred inf-id
$scoreboard players set #max inf-id $(max)
$scoreboard players $(operation) #max inf-id $(absmin)
scoreboard players operation #amount inf-id /= #max inf-id