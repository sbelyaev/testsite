set Path=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\
rem powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File C:\devops\bin\testsite.ps1 > C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "Hello from $PSHOME" > C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "begin message" >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\devops\bin\testsite.ps1 >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "end message" >> C:\devops\testsite.log
rem C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host ($PSHOME -replace "SysWOW64", "SysNative") >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Import-Module WebAdministration >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite = New-WebAppPool -Name "testsite" >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite.managedPipelineMode = "Integrated" >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite.startMode = "AlwaysRunning" >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite.processModel.maxProcesses = 8 >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite.processModel.identityType = 3 >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite.recycling.periodicRestart.time = "0" >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe $appPooltestsite | Set-Item >> C:\devops\testsite.log
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Set-ItemProperty -Path "IIS:\AppPools\testsite" -Name Recycling.periodicRestart.schedule -Value @{value="02:00"} >> C:\devops\testsite.log
dir C:\devops\testsite.log >> C:\devops\testsite.log
dir C:\devops\bin\testsite.ps1 >> C:\devops\testsite.log
