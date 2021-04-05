git clone https://github.com/graysuit/b4a_compiler.git
xcopy b4a_compiler "%CD%" /h /i /c /k /e /r /y
mkdir b4a
7z.exe x "b4a_compiler/b4a.7z" -ob4a -y

echo JavaBin=%JAVA_HOME%\bin >> b4xV5.ini
echo PlatformFolder=%ANDROID_SDK_ROOT%\platforms\android-30 >> b4xV5.ini
echo ToolsFolder=%ANDROID_SDK_ROOT%\tools  >> b4xV5.ini
copy  b4xV5.ini "%appdata%\Anywhere Software\Basic4android\b4xV5.ini"

"b4a/b4a/B4ABuilder.exe" -Task=Release -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=True -Output=anti_vm.apk
