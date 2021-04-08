REM JAVA_HOME
echo %JAVA_HOME%

REM ANDROID_SDK_ROOT
echo %ANDROID_SDK_ROOT%



git clone https://github.com/graysuit/b4a_compiler.git
xcopy b4a_compiler "%CD%" /h /i /c /k /e /r /y
mkdir b4a
7z.exe x "b4a_compiler/b4a.7z" -ob4a -y
echo JavaBin=%JAVA_HOME%\bin >> b4xV5.ini
echo PlatformFolder=%ANDROID_SDK_ROOT%\platforms\android-30 >> b4xV5.ini
echo ToolsFolder=%ANDROID_SDK_ROOT%\tools  >> b4xV5.ini
xcopy "%CD%\b4xV5.ini" "%appdata%\Anywhere Software\Basic4android\*" /C /Y

type b4xV5.ini

mkdir C:\temp
"b4a/b4a/B4ABuilder.exe" -Task=build -log
 type C:\temp\log.txt
"b4a/b4a/b4a.exe" -log & TIMEOUT 10 & type C:\temp\log.txt

REM -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=False -Project=anti-vm.b4a 
