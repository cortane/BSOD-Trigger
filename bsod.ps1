# kill_svchost.ps1

Write-Host "Attempting to kill svchost.exe processes..." -ForegroundColor Yellow

try {
    # 強制終了を試みる
    $result = Stop-Process -Name svchost -Force -ErrorAction Stop
    Write-Host "svchost.exe processes terminated." -ForegroundColor Green
} catch {
    Write-Host "Failed to terminate svchost.exe: $_" -ForegroundColor Red
}
