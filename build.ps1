Import-Module QuickPelles-CTools

cls
Compile-CFile switch.c -IncludePath $CrtInclude -RuntimeLibrary MultiStatic | Link-Executable -LibraryPath $CrtLib, $WindowsLib64