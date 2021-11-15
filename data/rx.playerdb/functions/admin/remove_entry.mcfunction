# source: rx.playerdb:admin/remove_entry
execute unless score $in.uid rx.pdb.io < $uid.next rx.uid run tellraw @a[tag=rx.admin] ["", {"nbt": "playerdb.name", "storage": "rx:info"}, {"text": " "}, {"text": "Deletion Error: Input uid outside max uid", "color": "#CE4257"}]
execute if score $in.uid rx.pdb.io < $uid.next rx.uid run function rx.playerdb:admin/remove_entry/logic
