@echo off
rem ==========================================================================
rem  ShipDocs PDF Tool - offline unlock & OCR. Nothing is installed.
rem ==========================================================================
setlocal
cd /d "%~dp0"
title ShipDocs PDF Tool

rem Reuse the node.exe that ships with ShipDocs QA (one folder up), or a local one.
set NODE=
if exist "..\runtime\node\node.exe" set NODE=..\runtime\node\node.exe
if exist "runtime\node\node.exe" set NODE=runtime\node\node.exe
if "%NODE%"=="" goto :nonode

"%NODE%" "app\server.mjs" %*
echo.
echo   ShipDocs PDF Tool has stopped.
goto :end

:nonode
echo.
echo   Node.js runtime not found.
echo   Expected: ..\runtime\node\node.exe  (from ShipDocs QA)  or  runtime\node\node.exe
echo.
:end
echo.
pause
