# trigger_info



tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                           RPGHealth",{"text":" / ","color":"gray"},"Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle RPGHealth.\n(turn off rpghp)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," RPGHealth ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.rpghp"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Health modification.\n(turn off hp changes, but keep getting exp)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," HP Mod ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.hpmod"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set your HP.\n(only up to your currently earned max HP)\n(unless disabled by admin)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," Choose HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.hpchoose"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle Respawn Healing.\n(heal if above 20 hp)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," Respawn Heal ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"rpghp.respheal"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

#execute as @s[scores={rpghp=-5}] run function rpghp:trigger_respheal
#execute as @s[scores={rpghp=-6}] run function rpghp:trigger_logheal
