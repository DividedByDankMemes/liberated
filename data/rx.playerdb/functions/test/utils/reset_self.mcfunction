#> Note this increments the uid counter w/o resetting it ;)
scoreboard players reset @s rx.uid
scoreboard players reset @s rx.pdb.has_entry
function ./utils/new_uid
function #rx.playerdb:api/v2/add_entry
