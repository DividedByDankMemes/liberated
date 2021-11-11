#increments the base id so each player has a unique one

scoreboard players operation @s chain.id = $chain.uid chain.id
scoreboard players add $chain.uid chain.id 1