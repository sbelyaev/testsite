set Path=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\
rem powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File C:\devops\bin\testsite.ps1 > C:\devops\testsite.log
powershell.exe Write-Host "Hello from $PSHOME" > C:\devops\testsite.log
powershell.exe Write-Host "begin message" >> C:\devops\testsite.log
powershell.exe -ExecutionPolicy Bypass -File C:\devops\bin\testsite.ps1 >> C:\devops\testsite.log
powershell.exe Write-Host "end message" >> C:\devops\testsite.log
powershell.exe Write-Host ($PSHOME -replace "SysWOW64", "SysNative") >> C:\devops\testsite.log
dir C:\devops\testsite.log >> C:\devops\testsite.log
dir C:\devops\bin\testsite.ps1 >> C:\devops\testsite.log
