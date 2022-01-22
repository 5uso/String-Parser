#tellraw @a "STATE 7-1"

function suso.str:internal/try_char/do
data modify entity 00000000-0000-0226-0000-000000000000 CustomName set from block ~ ~1 ~ Text2
data modify block ~1 ~ ~ Command set value "enchant 00000000-0000-0226-0000-000000000000 minecraft:aqua_affinity"

scoreboard players set $done suso.str 1
execute if score $got suso.str matches 1 run scoreboard players set $state suso.str 7
execute if score $got suso.str matches 0 run scoreboard players set $state suso.str 3

execute if score $curr_chars suso.str >= $max_chars suso.str run function suso.str:internal/stop