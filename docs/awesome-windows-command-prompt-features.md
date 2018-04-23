# Pipe command output to the clipboard

## Clip

In Vista they added clip.exe. It captures any standard input and puts in the clipboard.
That means you can

* dir /s | clip
* ver | clip
* ipconfig /all | clip

## F7 gives you a graphical (text) history

## Full Screen Command Prompt

Pressing "ALT-ENTER" in the command prompt (any prompt, cmd, powershell, or bash) will make it full screen.

## Little Fit and Finish Commands

* You can change the current command prompt's title with "TITLE"
* You can change its size with MODE CON COLS=x LINES=y
* You can change the colors from a batch file with COLOR (hex)