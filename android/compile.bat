REM echo %JAVA_HOME%
dir %ANDROID_SDK_ROOT%\platforms /ad
dir %ANDROID_SDK_ROOT%\build-tools /ad

REM git clone https://github.com/graysuit/b4a_compiler.git
REM xcopy b4a_compiler "" /h /i /c /k /e /r /y
REM mkdir b4a
REM 7z.exe x "b4a_compiler/b4a.7z" -ob4a -y
REM "b4a/b4a/B4ABuilder.exe" -Task=Release -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=True -Output=anti_vm.apk
