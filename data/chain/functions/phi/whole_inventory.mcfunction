# Copy player inventory data to storage and sort into sections so they can be loaded.

# Reset sections:
data modify storage phi.modifyinv:temp inventory set value []
data modify storage phi.modifyinv:temp hotbar set value []
data modify storage phi.modifyinv:temp armor set value []
data modify storage phi.modifyinv:temp offhand set value []

# Copy whole inventory data:
scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
function rx.playerdb:api/get
data modify storage phi.modifyinv:temp whole_inventory set from storage rx.playerdb:io player.data.chain.inventory


# Sort the slots into sections:
function phi.modifyinv:setup/internal/whole_inventory/sort_slots