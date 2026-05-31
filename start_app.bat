@echo off
echo Starting VakaPo Application...
echo.

REM Try to start the application using Maven wrapper
echo Attempting to start with Maven wrapper...
call mvnw.cmd spring-boot:run

REM If that fails, try with Maven directly
if %errorlevel% neq 0 (
    echo Maven wrapper failed, trying with Maven directly...
    mvn spring-boot:run
)

REM If that fails, try with Java directly
if %errorlevel% neq 0 (
    echo Maven failed, trying with Java directly...
    java -cp "target/classes;target/dependency/*" lk.vakapo.vakapo.VakaPoApplication
)

pause
