@echo off
mode con: cols=30 lines=10
powershell -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy RemoteSigned -File C:\Scripts\PersonalScripts\AutoRestartWifiAdapter\restartIntertAdapter.ps1' -Verb RunAs"