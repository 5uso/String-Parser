execute if score $offset suso.str matches 5 run scoreboard players set $offset suso.str 1
execute if score $offset suso.str matches 0 run data modify storage suso.str:internal possible_chars set value ["I","J"]

execute if score $offset suso.str matches 1 run function suso.str:internal/possibilities/ctx2/1
execute if score $offset suso.str matches 2 run data modify storage suso.str:internal possible_chars set value ["I","M","N","O","Y","Z"]
execute if score $offset suso.str matches 3 run function suso.str:internal/possibilities/ctx2/3
execute if score $offset suso.str matches 4 run function suso.str:internal/possibilities/ctx2/4