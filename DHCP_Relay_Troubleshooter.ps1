### 📜 ۳. فایل اسکریپت اصلی (`DHCP_Relay_Troubleshooter.ps1`)

```powershell
param (
    [Parameter(Mandatory=$true)]
    [string]$DHCPServerIP
)

Write-Host "--- DHCP Relay Diagnostic Tool ---" -ForegroundColor Cyan

# 1. Check IP Address
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Host {$_.InterfaceAlias -notlike "*Loopback*"}).IPAddress | Select-Object -First 1
Write-Host "Current IP Address: $ip" -ForegroundColor Yellow

if ($ip -like "169.254*") {
    Write-Host "[WARNING] APIPA detected! DHCP Server or Relay Agent is not responding." -ForegroundColor Red
} else {
    Write-Host "[OK] Valid IP Address assigned." -ForegroundColor Green
}

# 2. Test Gateway (Relay Agent)
$gateway = (Get-NetRoute -DestinationPrefix "0.0.0.0/0").NextHop | Select-Object -First 1
Write-Host "Default Gateway: $gateway" -ForegroundColor Yellow

if (Test-Connection -ComputerName $gateway -Count 1 -Quiet) {
    Write-Host "[OK] Gateway (Relay Agent) is reachable." -ForegroundColor Green
} else {
    Write-Host "[ERROR] Cannot reach Gateway!" -ForegroundColor Red
}

# 3. Test DHCP Server
Write-Host "Testing DHCP Server ($DHCPServerIP)..." -ForegroundColor Yellow
if (Test-Connection -ComputerName $DHCPServerIP -Count 1 -Quiet) {
    Write-Host "[OK] DHCP Server is reachable via Ping." -ForegroundColor Green
} else {
    Write-Host "[ERROR] Cannot reach DHCP Server!" -ForegroundColor Red
}
