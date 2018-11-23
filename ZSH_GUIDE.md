# Zsh Formatting
## Prompt
In bash you change the prompt by setting the PS1 variable directly. In zsh, you can still do this, but there is also a PROMPT variable you can use that does the same thing. 
<br><br>
To use ANSI codes in the prompt, it has to be encloded in <code>$''</code>. Special codes should also be inside <code>%{ %}</code> blocks. Control sequences use the format <code>\e[xx;yym</code> where <code>xx</code> and <code>yy</code> are ANSI codes. For example, A Blue, bold prompt would look like this: <code>$'%{\e[34;1m%} Formatted Text '</code>
<br><br>
There are various variables available for use in the prompt, all starting with <code>%</code>:<br>
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