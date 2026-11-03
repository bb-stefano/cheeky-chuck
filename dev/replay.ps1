param([string[]]$cmds = @("dtap 160 227"), [int]$settle = 3, [switch]$noLaunch)
$log = "C:\work\games\cheekychuck\sim.log"
if (-not $noLaunch) {
  Stop-Process -Name "Corona Simulator" -Force -ErrorAction SilentlyContinue; Start-Sleep -Seconds 1
  Set-ItemProperty -Path 'HKCU:\Software\Ansca Corona\Corona Simulator\Preferences' -Name lastRunSucceeded -Value 1
  Start-Process -FilePath "C:\Program Files (x86)\Corona Labs\Corona\Corona Simulator.exe" -ArgumentList '-no-console','"C:\work\games\cheekychuck\game\main.lua"' -RedirectStandardOutput $log
  Start-Sleep -Seconds 7
  "tap 260 438" | Out-File -Encoding ascii C:\work\games\cheekychuck\touchcmd.txt   # CONTINUE on the splash screen
  Start-Sleep -Seconds 4
}
$before = (Get-Content $log).Count
($cmds -join "`n") | Out-File -Encoding ascii C:\work\games\cheekychuck\touchcmd.txt
Start-Sleep -Seconds $settle
Get-Content $log | Select-Object -Skip $before | Where-Object { $_ -notmatch '^WARNING' }
