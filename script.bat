@REM @REM javac -cp "lib/*" -d "./bin" "./src/Controller/*.java" 
@REM @REM Définir les chemins
@REM set src="D:\Mes documents\Romance\Desktop\fianarana\spring web\sprint\FrameWork\src"
@REM set bin="D:\Mes documents\Romance\Desktop\fianarana\spring web\sprint\FrameWork\bin"
@REM set mylib="D:/Mes documents/Romance/Desktop/fianarana/spring web/sprint/Test/lib"
@REM set jar=%mylib%\sprint-zero.jar

@REM @REM Compiler les fichiers Java
@REM javac -cp "lib/*" -d %bin% %src%\*.java

@REM @REM Créer le fichier JAR
@REM jar -cvf %jar% -C %bin% .

@REM @REM Copier le fichier JAR dans le dossier lib
@REM xcopy /q/y %jar% %mylib%

@REM @echo Done
mkdir "temp"
set temp="D:/Mes documents/Romance/Desktop/fianarana/spring web/sprint/FrameWork/temp"
set jar="D:/Mes documents/Romance/Desktop/fianarana/spring web/sprint/FrameWork/lib/*"
set javaako="D:\Mes documents\Romance\Desktop\fianarana\spring web\sprint\FrameWork\src\"

@REM Compilation des fichiers dans le répertoire src et ses sous-répertoires
for /r ".\src" %%f in (*.java) do (
    copy "%%f" "temp\%%~nf.java"
    @REM javac -cp %jar% -d "temp" "%f"
)
cd temp
javac -cp %jar% -d "../temp" *.java
 for /r "." %%f in (*.java) do (
    del "%%f" 
 )
cd .. 

set libTest="D:/Mes documents/Romance/Desktop/fianarana/spring web/sprint/Test/lib"

jar cvf "sprint0.jar" -C temp/ .
move "sprint0.jar" %libTest%

@REM rmdir /q/s "temp"

