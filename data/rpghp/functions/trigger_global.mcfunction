# trigger_global


tellraw @s ["",{"text":"Max HP          ","color":"gray"},"",{"score":{"name":"#max_hp","objective":"rpghp.config"},"color":"gray"}]
tellraw @s ["",{"text":"Lowest HP      ","color":"gray"},"",{"score":{"name":"#lowest_hp","objective":"rpghp.config"},"color":"gray"}]
tellraw @s ["",{"text":"Starting HP     ","color":"gray"},"",{"score":{"name":"#start_hp","objective":"rpghp.config"},"color":"gray"}]
tellraw @s ["",{"text":"EXP Multiplier   ","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"EXP Curve.\n(needed-xp-is-hp-multiplied-by:)","color":"gray"},{"text":"","color":"dark_gray"}]}},"",{"score":{"name":"#xpmult","objective":"rpghp.config"},"color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"EXP Curve.\n(needed-xp-is-hp-multiplied-by:)","color":"gray"},{"text":"","color":"dark_gray"}]}}]

tellraw @s ["",{"text":"EXP Checker      ","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #exp_checker rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle exp vs level check.\n(for roleplay and custom games, or OCD)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 1\n0=OFF 1=Full 2=Raw 3=Level_Based","color":"dark_gray"}]}},"",{"text":"(Current: ","color":"gray"},{"score":{"name":"#exp_checker","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"XP Math Mode     ","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xp_math rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to edit exp math mode.\n(full or level based)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=Full 1=Level_Based","color":"dark_gray"}]}},"",{"text":"(Current: ","color":"gray"},{"score":{"name":"#xp_math","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
