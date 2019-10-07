﻿#Set-ExecutionPolicy -ExecutionPolicy unrestricted
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

#Office + biz apps
choco install office365proplus -y
choco install microsoft-teams -y
choco install powerbi -y
choco install onenote -y

#Tools
choco install keepass -y
choco install sysinternals -y
choco install notepadplusplus -y
choco install freefilesync -y
choco install paint.net -y --allowEmptyChecksums
choco install 7zip -y
choco install Winmerge -y --allowEmptyChecksums
choco install treesizefree -y --allowEmptyChecksums
choco install scansnapmanager -y
choco install microsoft-edge-insider -y
choco install gitter -y
choco install spotify -y

#Development
choco install visualstudio2019enterprise -y
choco install VisualStudioCode -y
choco install fiddler4 -y
choco install git -y
choco install powershell-core -y
choco install resharper-platform -y
choco install docker-for-windows --pre -y
choco install Curl -y
choco install -y postman
choco install postman -y
choco install sql-server-management-studio -y

#Kubernetes
choco install kubernetes-cli -y
choco install draft -y
choco install kubernetes-helm -y

#choco install GoogleChrome -y
#choco install minishift -y

#Java & OSS
choco install zulu -y
choco install maven -y
choco install nodejs -y
choco install python3 -y
choco install wsl-ubuntu-1804 -y
choco install terraform -y

#Azure
choco install azurepowershell -y
choco install microsoftazurestorageexplorer -y
choco install azure-documentdb-emulator -y
choco install cosmosdbexplorer -y
choco install azurestorageemulator -y
choco install azure-cli -y
choco install windowsazurepowershell -y
choco install azure-functions-core-tools -y


Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart

#VS Code extensions
 code --install-extension ms-vscode.csharp
 code --install-extension ms-vscode.mono-debug
 code --install-extension ms-vscode.PowerShell
 code --install-extension ecmel.vscode-spring-boot
     
 code --install-extension ms-vscode.Theme-MarkdownKit 
 code --install-extension sivarajanraju.vs-code-office-ui-fabric 
 code --install-extension ms-vscode.vscode-azureextensionpack
 code --install-extension bradygaster.azuretoolsforvscode
 code --install-extension msazurermtools.azurerm-vscode-tools
 code --install-extension ms-azuretools.vscode-azureappservice
 code --install-extension ms-azuretools.vscode-azurefunctions

 #developer mode enabled
 reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
 
 #PowerShell Modules
 Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
 Install-Module -Name AzureRM -Force -SkipPublisherCheck
 Install-Module WslInterop
 Import-WslCommand "awk", "emacs", "grep", "head", "less", "ls", "man", "sed", "seq", "ssh", "tail", "vim"
 
 #AZ-CLI Modules
 az extension add -y --source https://azureclitemp.blob.core.windows.net/spring-cloud/spring_cloud-0.1.0-py2.py3-none-any.whl
 