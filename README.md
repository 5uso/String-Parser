# String-Parser
A Minecraft datapack that allows to parse strings into character arrays. `"hi"` → `["h","i"]`

Can parse player names, command outputs, skull data, book contents...

Handles any unicode character.

Requires commandblocks to be enabled.

Based on the tools that Ts, Gibbs, and I developed at https://github.com/McTsts/Minecraft-String-Utilities. That repo also contains a detailed explanation of how this works.

## How to use
Input/Output is done via data storage `suso.str:io`.

Data paths:
- `in.string`: Input string to be parsed.
- `in.possible_chars`: Array with the characters expected to be found on the input string, ordered by unicode code. If any character on the input string is not on this array, parsing will fail. Defaults to `["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]`. Other useful character sets can be found within the functions at `function suso.str:charsets/`. There are two exceptions to the unicode ordering: `"`, and newline. Both of these sort near `\` due to escaping `["\"","\\","\n"]`.
- `in.max_chars`: Maximum amount of characters, after which the parser will stop and return the current result. If not set defaults to the length of the string minus the length of `in.prep`.
- `in.prep`: Prefix string, already known to be at the start of the input string. Won't be part of the result. Can be both in string or char array form.
- `in.callback`: Command to be run after parsing finishes.
- `in.get`: Integer that configures head parsing mode, explained in the section [below](#parsing-heads).
- `in.name`: Player name, used for the simplified [head mode](#parsing-heads) interface.
- `out`: Resulting char array. If using [head mode](#parsing-heads), it's an object containing the requested properties instead.

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

## Parsing heads
One of the most useful applications for string parsing is parsing the base64 that contains information related to player heads. For this reason, this parser provides a mode that efficiently parses and decodes the base64 string by heavily limiting the characters searched and skipping known parts of the data.

This mode will trigger if the value of `in.get` is more than 1. By using this value, you can control which parts of the data you want in the output. You obtain the integet to put in `in.get` by multiplying the numbers associated with the values you need:

```
time:   2 (Unix timestamp)
id:     3 (Player UUID)
name:   5 (Player name)
sig:    7 (Signature required? 1 or 0)
skin:  11 (Skin url, only the hash part)
model: 13 (Model: 0 for Steve and 1 for Alex)
cape:  17 (Cape url, only the hash part)
```

Since head data doesn't load immediately as of 1.17+, knowing when it's ok to copy the base64 into `in.string` can be a bit of a pain. For this reason, a simplified interface is provided that takes the username of the head you want to parse and waits for it to load automatically. It can be used by calling `function suso.str:call_head` like this:
```mcfunction
data remove storage suso.str:io in

# In case in.name is not provided, the head of the player that the function is executed as will be used instead
data modify storage suso.str:io in.name set value "5uso"
data modify storage suso.str:io in.get set value 510510
data modify storage suso.str:io in.callback set value 'tellraw @a {"nbt":"out","storage":"suso.str:io"}'
function suso.str:call_head
```

## Parsing newlines
Bare newline characters can appear in writable (unsigned) books. In order to parse the newline character, you'll first need to get it into your search array. Doing so is not as straightforward as any other character, since minecraft will not allow you to type it into most commands, even when escaped. If you need a newline character, you can find a string containing a single one at `storage suso.str:internal newline`. Copy it from there using `data modify` into your search array.

## Crediting
This library is licensed under the [Apache License 2.0](https://github.com/5uso/String-Parser/blob/main/LICENSE). When using it as part of  your own projects, you must:

- Include [crediting for the library](https://github.com/5uso/String-Parser/blob/main/NOTICE) in a way visible to players. This probably fits best into the credits section of your map/datapack in-game, but in case that's impossible it may be done within a text file or documentation distributed with the project.
- Include a copy of the [license](https://github.com/5uso/String-Parser/blob/main/LICENSE).
