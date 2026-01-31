@echo off
powershell -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy RemoteSigned -File %~dp0\restartIntertAdapter.ps1' -Verb RunAs"