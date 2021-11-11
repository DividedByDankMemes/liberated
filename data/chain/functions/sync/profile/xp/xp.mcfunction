
#different equations
scoreboard players set $chain.xp_loaded chain.temp 0
execute if score @s chain.xp matches 0..16 unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/16
execute if score @s chain.xp matches 17..31 unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/31
execute if score @s chain.xp matches 32.. unless score $chain.xp_loaded chain.temp matches 1 run function chain:sync/profile/xp/32

