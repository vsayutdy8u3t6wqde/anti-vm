REM JAVA_HOME
%JAVA_HOME%\bin\javac.exe -version

REM ANDROID_SDK_ROOT
echo %ANDROID_SDK_ROOT%



git clone https://github.com/graysuit/b4a_compiler.git
xcopy b4a_compiler "%CD%" /h /i /c /k /e /r /y
mkdir b4a
7z.exe x "b4a_compiler/b4a.7z" -ob4a -y
echo JavaBin=%JAVA_HOME%\bin >> b4xV5.ini
echo PlatformFolder=C:\b4x\sdk\platforms\android-30 >> b4xV5.ini
echo ToolsFolder=C:\b4x\sdk\tools  >> b4xV5.ini
xcopy "%CD%\b4xV5.ini" "%appdata%\Anywhere Software\Basic4android\*" /C /Y

bitsadmin /transfer myDownloadJob /download /priority normal https://dl.google.com/android/repository/commandlinetools-win-6609375_latest.zip C:\b4x\commandlinetools-win-6609375_latest.zip
bitsadmin /transfer myDownloadJob /download /priority normal https://b4xfiles-4c17.kxcdn.com/b4a/resources_9_20.zip C:\b4x\resources_9_20.zip
7z.exe x "C:\b4x\commandlinetools-win-6609375_latest.zip" -oC:\b4x\sdk -y
7z.exe x "C:\b4x\resources_9_20.zip" -oC:\b4x\sdk -y


type b4xV5.ini

"b4a/b4a/B4ABuilder.exe" -Task=build 
REM -NoSign=False -Obfuscate=False -ShowWarnings=True -Optimize=True -NoClean=False -Project=anti-vm.b4a 
