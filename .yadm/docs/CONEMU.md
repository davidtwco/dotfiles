# Using ConEmu with Bash for Windows
It is recommended that ConEmu is used if you are using Bash for Windows on a Windows build earlier than 16251. The [ConEmu configuration](.ConEmu.xml) is included in the repository and can be imported into ConEmu.

In order to use 256 colours, we need to use the WSL Bridge. The reasoning for this is explained below (excerpt from the [ConEmu documentation for Bash on Windows](https://conemu.github.io/en/BashOnWindows.html)):

> Despite the fact WSL binaries runs in Windows console window, they are not native Windows console applications (obviously) and they are not using native Windows Console API.

> When you run `%windir%\system32\bash.exe` this native Windows process starts ‘linux kernel’ outside of Windows console, and linux applications communicate with conhost without use of Windows Console API.

> That means ConEmu can’t ‘hook’ linux processes! Unfortunately bash.exe which may be hooked is only a sort of a loader for WSL, bash.exe does not do console output and all ANSI sequences are processed before ConEmu can see them. WSL process all ANSI and writes stripped output directly to conhost.

> Another problem is that due to mistake in WSL design, keypresses written to conhost input buffer using standard Windows API function WriteConsoleInput are not converted into xterm keyboard sequences. But when user presses same key directly in RealConsole they are converted properly.

Therefore, we will need to create the following task:

Setting                            | Value
-------                            | -----
Task (assuming folder is `C:\WSL`) | `set "PATH=%ConEmuBaseDirShort%\wsl;%PATH%" & %ConEmuBaseDirShort%\conemu-cyg-64.exe --wsl -cur_console:pm:/mnt`
Task Parameters                    | `-icon "%USERPROFILE%\AppData\Local\lxss\bash.ico"`
