# chain:test1 (prereqs to Heal player at login)
# called from tick unless player has tag for Chainmail.
# Leather
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:leather_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Iron
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:iron_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Gold
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:golden_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Chains
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:chainmail_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Diamond
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:diamond_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Netherite
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# elytra
tag @s[scores={chains_log=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:elytra",tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] add chains_heal
# Reset Logout Score for next login redundancy
scoreboard players set @s chains_log 0
# trigger Heal Function
execute as @s[tag=chains_heal] run function chains:heal