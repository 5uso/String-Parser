#tellraw @a "STATE 3"

execute store success score $cmp suso.str run data modify storage suso.str:internal flattened_cmp set from block ~1 ~ ~ LastOutput

execute if score $cmp suso.str matches 1 run function suso.str:internal/states/3-1
execute if score $cmp suso.str matches 0 run function suso.str:internal/end