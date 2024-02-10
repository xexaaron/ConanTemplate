@echo off

cd build\Release

REM For each executable in Root/build/Release attempt to execute.
for %%i in (*.exe) do (
    %%i
)