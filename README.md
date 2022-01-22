# String-Parser
A Minecraft datapack that allows to parse strings into character arrays. `"hi"` → `["h","i"]`

Can parse player names, command outputs, skull data, book contents...

Handles any unicode character.

Requires commandblocks to be enabled.

Based on the tools that Ts, Gibbs, and I developed at https://github.com/McTsts/Minecraft-String-Utilities

## How to use
Input/Output is done via data storage `suso.str:io`.

Data paths:
- `in.string`: Input string to be parsed.
- `in.possible_chars`: Array with the characters expected to be found on the input string, in alphabetical order. If any character on the input string is not on this array, parsing will fail. Defaults to `["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]`
- `in.max_chars`: Maximum amount of characters, after which the parser will stop and return the current result.
- `in.prep`: Prefix string, already known to be at the start of the input string. Won't be part of the result. Can be both in string or char array form.
- `in.callback`: Command to be run after parsing finishes.
- `out`: Resulting char array.

Once the input values have been set, parsing can be started with `function suso.str:call`. Since it runs from a commandblock chain, results won't be available on the same tick.

## Example
`function ex:a`
```mcfunction
data modify storage suso.str:io in.string set from block 0 0 0 LastOutput
data modify storage suso.str:io in.prep set value '{"extra":[{"text":"/me <action>"}],"text":"['
data modify storage suso.str:io in.max_chars set value 8
data modify storage suso.str:io in.possible_chars set value ["0","1","2","3","4","5","6","7","8","9",":"]
data modify storage suso.str:io in.callback set value 'tellraw @a {"nbt":"out","storage":"suso.str:io","interpret":true}'
function suso.str:call
```
`function ex:b`
```mcfunction
gamerule sendCommandFeedback true
forceload add 0 0
fill 0 0 0 0 1 0 air
setblock 0 0 0 minecraft:command_block[facing=up]{auto:1b,Command:"help me",TrackOutput:1b}
setblock 0 1 0 minecraft:chain_command_block[facing=up]{auto:1b,Command:"function ex:a",TrackOutput:1b}
```
Running `function ex:b` displays the current system time in the chat.
