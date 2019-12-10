#Set-ExecutionPolicy -ExecutionPolicy unrestricted
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

#Office + biz apps
choco install office365proplus -y
choco install microsoft-teams -y
choco install powerbi -y
choco install onenote -y

Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart

#Tools
choco install keepass -y
choco install notepadplusplus -y
choco install 7zip -y
choco install Winmerge -y --allowEmptyChecksums
choco install treesizefree -y --allowEmptyChecksums
choco install microsoft-edge-insider-dev -y
choco install gitter -y
choco install spotify -y
choco install microsoft-windows-terminal -y
choco install telnet -y
choco install openssh -y


#Development
choco install visualstudio2019enterprise -y
choco install VisualStudioCode -y
choco install intellijidea-ultimate -y
choco install fiddler4 -y
choco install git -y
choco install tortoisegit -y
choco install powershell-core -y
choco install resharper-platform -y
choco install docker-for-windows --pre -y
choco install curl -y
choco install postman -y

#Kubernetes
choco install kubernetes-cli -y
choco install draft -y
choco install kubernetes-helm -y

#OSS
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
choco install az.powershell -y


#VS Code extensions
 code --install-extension ms-vscode.csharp
 code --install-extension ms-vscode.mono-debug
 code --install-extension ms-vscode.PowerShell
 code --install-extension ecmel.vscode-spring-boot
 code --install-extension ms-vsts.team    
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
