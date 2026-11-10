# ** clipboard-utils **

Small clipboard utilities for Windows.

Launching PowerShell every time I wanted to copy something to the clipboard from the command line felt too slow, so I made these lightweight tools instead.

## Tools

### cliptext

Copies text to the clipboard.

- Accepts text as command-line arguments
- Also accepts input from stdin (pipe)

```cmd
cliptext.exe "text to copy"
echo hello | cliptext.exe
type file.txt | cliptext.exe
```

### clipfile

Copies file paths to the clipboard as a file drop list.  
This puts the files in the same state as when you copy them in Explorer.

```cmd
clipfile.exe file1.txt file2.txt
clipfile.exe C:\path\to\folder
```

## Build & Release

```cmd
build.bat
rem Outputs `cliptext.exe` and `clipfile.exe` to the `bin/` directory.

release.bat
rem Creates `release/clipboard-utils.zip` containing the two executables and the LICENSE file.
```

## Requirements

- Windows
- .NET Framework 4.0 or later

## License

See the [LICENSE](LICENSE) file.
