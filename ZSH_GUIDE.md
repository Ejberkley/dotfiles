# Zsh Formatting
## Prompt
You can change what the prompt looks like by setting the PROMPT variable (currently done at the bottom of dotfiles/.zsh_prompt)
<br><br>
You can use ANSI codes in the prompt to apply colors and other text formatting. They use the format <code>\033[xxm</code> where <code>xx</code> is an ANSI code. For example, a Blue prompt would look like this: <code>$\033[34mBlue Text'</code>
<br><br>
In addition to ANSI codes, there are various variables available for use in the prompt, all starting with <code>%</code>:<br>
<code>%%</code> - The % symbol<br>
<code>%M</code> - The machine host name<br>
<code>%n</code> - The logged in user<br>
<code>%d</code>, <code>%/</code> - The current working directory.<br>
<code>%W</code> - The date in mm/dd/yy format.<br>
<code>%t</code>, <code>%@</code> - The current time of day in 12-hour, am/pm format.<br>
<code>%T</code>, <code>%@</code> - The current time of day in 24-hour format.<br>
<code>%*</code>, <code>%@</code> - The current time of day in 24-hour format with seconds/<br>

More codes can be found [here](http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion).

## ANSI Sequences
#### Formatting
| Code | Effect |
| ---- | ------ |
0 | Reset all attributes
1 | Bold
2 | Dim
3 | Italics
4 | Underline
5 | Flash
6 | Invert color

#### Colors
| Code | Color |
| ---- | ----- |
30 | Black
31 | Red
32 | Green
33 | Yellow
34 | Blue
35 | Magenta
36 | Cyan
37 | Light gray
39 | Default color
90 | Dark gray
91 | Light red
92 | Light green
93 | Light yellow
94 | Light blue
95 | Light magenta
96 | Light cyan
97 | White

#### Background Colors
| Code | Color |
| ---- | ----- |
40 | Black
41 | Red
42 | Green
43 | Yellow
44 | Blue
45 | Magenta
46 | Cyan
47 | Light gray
49 | Default
100 | Dark gray
101 | Light red
102 | Light green
103 | Light yellow
104 | Light blue
105 | Light magenta
106 | Light cyan
107 | White