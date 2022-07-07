# .bashrc

> 语言 | [English](https://github.com/xuejun-xj/tool_configurations/blob/main/bash/README.md) / [中文](https://github.com/xuejun-xj/tool_configurations/blob/main/bash/README-zh.md)

当启动一个新的 bash 终端时，会加载这个配置文件。

## 1 PS1 和 PS2

> PS1: 命令行提示符第一行样式
> PS2: 多行命令时，多行的命令样式

### 1.1 特殊字符串

- \a: 响铃字符
- \d: 日期
- \e: 转义符
- \h & \H: 主机名
- \n\r: 换行回车
- \t & \T & \@ & \A: 时间
- \u: 登录用户名称
- \w & \W: 当前工作目录
- \$: 提示符 $(user) 或 #(root)

### 1.2 颜色

- \e[A;Bm: 颜色命令开始符
   - A: 前景色
   - B: 背景色
- \e[0m: 颜色命令结束符
   - \e[1m: 高亮显示
   - \e[4m: 下划线
   - \e[5m: 闪烁
   - \e[7m: 反显
   - \e[8m: 消隐

|  A |  B | color |
|:--:|:--:|:-----:|
| 30 | 40 |  黑色 |
| 31 | 41 |  红色 |
| 32 | 42 |  绿色 |
| 33 | 43 |  黄色 |
| 34 | 44 |  蓝色 |
| 35 | 45 |  紫色 |
| 36 | 46 |  青蓝 |
| 37 | 47 |  白色 |

## 2 别名

我们可以使用 alias 命令来定义一些常用命令的别名。然后在 .bashrc 文件中加载它即可。

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

