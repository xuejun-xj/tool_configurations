# .bashrc

> Language | [English](https://github.com/xuejun-xj/tool_configurations/blob/main/bash/README.md) / [中文](https://github.com/xuejun-xj/tool_configurations/blob/main/bash/README-zh.md)

When we start a new bash, this file will be sourced.

## 1 PS1 & PS2

> PS1: first command line style
> PS2: command line style when using multi-line commands

### 1.1 special string

- \a: bell
- \d: date
- \e: escape character
- \h & \H: hostname
- \n\r: new line & back to header
- \t & \T & \@ & \A: time
- \u: username
- \w & \W: current directory
- \$: $(user) / #(root)

### 1.2 colors

- \e[A;Bm: color command start symbol
   - A: foreground color
   - B: background color
- \e[0m: color command stop symbol
   - \e[1m: highlight
   - \e[4m: underline
   - \e[5m: flashing
   - \e[7m: reverse
   - \e[8m: disappear

|  A |  B | color |
|:--:|:--:|:-----:|
| 30 | 40 | black |
| 31 | 41 |  red  |
| 32 | 42 | green |
| 33 | 43 | yello |
| 34 | 44 |  blue |
| 35 | 45 | purple|
| 36 | 46 |  cyan |
| 37 | 47 | white |

## 2 alias

We can use "alias" to simplfy common commands in .bash\_aliases.

Then load it in .bashrc file to add aliases.

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

