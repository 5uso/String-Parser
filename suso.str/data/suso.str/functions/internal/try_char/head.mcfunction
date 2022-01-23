data modify storage suso.str:internal last_char set from storage suso.str:internal current_char

function suso.str:internal/decode/check
function suso.str:internal/context/check/do

scoreboard players add $offset suso.str 1
execute unless score $last_ctx suso.str = $context suso.str run scoreboard players operation $ctx_offset suso.str = $offset suso.str
scoreboard players operation $last_ctx suso.str = $context suso.str

function suso.str:internal/possibilities/get

#tellraw @a ["Possible chars: ",{"nbt":"possible_chars","storage":"suso.str:internal"}]