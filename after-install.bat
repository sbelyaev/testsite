set Path=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\
rem powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File C:\devops\bin\testsite.ps1 > C:\devops\testsite.log
powershell.exe Write-Host "test message" >> C:\devops\testsite.log
