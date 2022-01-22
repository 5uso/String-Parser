#tellraw @a "STATE 2"

#tellraw @p {"nbt":"LastOutput","block":"~1 ~ ~","interpret":true}
data modify storage suso.str:internal flattened_in set from block ~1 ~ ~ LastOutput
data modify storage suso.str:internal flattened_cmp set from storage suso.str:internal flattened_in

function suso.str:internal/try_char/do
data modify entity 00000000-0000-0226-0000-000000000000 CustomName set from block ~ ~1 ~ Text2

execute if score $got suso.str matches 1 run scoreboard players set $state suso.str 7
execute if score $got suso.str matches 0 run scoreboard players set $state suso.str 3

execute if score $curr_chars suso.str >= $max_chars suso.str run function suso.str:internal/stop