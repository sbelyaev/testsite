set Path=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\devops\bin\testsite.ps1 > C:\devops\var\log\testsite.log
rem C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "Hello from $PSHOME" > C:\devops\testsite.log
rem C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "begin message" >> C:\devops\testsite.log
rem C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\devops\bin\testme.ps1 >> C:\devops\testsite.log
rem C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Write-Host "end message" >> C:\devops\testsite.log
