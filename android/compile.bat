where java.exe
java.exe -v
gradlew.bat assembleRelease
java.exe -jar "signer\ApkSigner.jar" sign --key "signer\apkeasytool.pk8" --cert "signer\apkeasytool.pem"  --v4-signing-enabled false --out "%cd%/app/build/outputs/apk/release/anti_vm.apk" "%cd%/app/build/outputs/apk/release/app-release-unsigned.apk"
