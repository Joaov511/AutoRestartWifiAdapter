[console]::WindowWidth=60; 
[console]::WindowHeight=20; 
[console]::BufferWidth=[console]::WindowWidth

Write-Host "Internet Connection Monitor" -ForegroundColor Cyan
Write-Host ""
while ($true) {
    $pingResult = Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet
    if (-not $pingResult) {
        $currentTime = Get-Date -Format "HH:mm:ss"
        Write-Host "Connection lost - Restarting Wi-Fi adapter... $($currentTime)" -ForegroundColor Red
        Restart-NetAdapter -Name "Wi-Fi" -Confirm:$false
        Start-Sleep -Seconds 10
    }
    Start-Sleep -Seconds 10
}
