git clone https://github.com/graysuit/b4a_compiler.git
xcopy b4a_compiler "" /h /i /c /k /e /r /y
mkdir b4a
7z.exe x "b4a_compiler/b4a.7z" -ob4a
"b4a/B4ABuilder.exe" -Task=Release -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=True -Output=anti_vm.apk
