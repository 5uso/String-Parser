gamerule maxCommandChainLength 2147483647
scoreboard objectives add suso.str dummy
scoreboard players set #2 suso.str 2
scoreboard players set #3 suso.str 3
scoreboard players set #4 suso.str 4
scoreboard players set #5 suso.str 5
scoreboard players set #7 suso.str 7
scoreboard players set #11 suso.str 11
scoreboard players set #13 suso.str 13
scoreboard players set #17 suso.str 17

execute in minecraft:overworld run function suso.str:load_overworld

#tellraw @a "Reloaded!"
