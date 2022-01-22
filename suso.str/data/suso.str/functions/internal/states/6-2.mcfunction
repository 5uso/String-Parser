#tellraw @a "STATE 6-2"
#tellraw @a "Go lower"

#tellraw @a ["Chars removed: ", {"nbt":"possible_chars","storage":"suso.str:internal"}]

data modify storage suso.str:internal possible_chars set from storage suso.str:internal possible_chars2
data remove storage suso.str:internal possible_chars2

#tellraw @a ["Chars left: ", {"nbt":"possible_chars","storage":"suso.str:internal"}]