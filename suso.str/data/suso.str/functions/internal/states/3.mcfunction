#tellraw @a "STATE 3"

#Disabling this check and going to 3-1 may increase performance
#data modify storage suso.str:internal flattened_cmp set from storage suso.str:internal flattened_in
#execute store success score $cmp suso.str run data modify storage suso.str:internal flattened_cmp set from block ~1 ~ ~ LastOutput

#execute if score $cmp suso.str matches 1 run function suso.str:internal/states/3-1
#execute if score $cmp suso.str matches 0 run function suso.str:internal/end

data modify storage suso.str:internal flattened_cmp set from block ~1 ~ ~ LastOutput
function suso.str:internal/states/3-1