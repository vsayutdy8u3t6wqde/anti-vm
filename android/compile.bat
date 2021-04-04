git clone https://github.com/graysuit/b4a_compiler.git
xcopy b4a "" /h /i /c /k /e /r /y
7z.exe x b4a.7z
"b4a/B4ABuilder.exe" -Task=Release -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=True -Output=anti_vm.apk
