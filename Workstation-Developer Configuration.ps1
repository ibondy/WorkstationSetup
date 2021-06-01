#Set-ExecutionPolicy -ExecutionPolicy unrestricted
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

#Office + biz apps
#choco install office365proplus -y
#choco install microsoft-teams -y
#choco install powerbi -y
#choco install onenote -y

winget install --id Microsoft.VisualStudioCode.Insiders
winget install --id Microsoft.Office
winget install --id Microsoft.Teams.Preview
winget install --id Microsoft.PowerBI

#Tools
#choco install keepass -y
winget install --id DominikReichl.KeePass
choco install sysinternals -y
#choco install notepadplusplus -y
winget install -id Notepad++.Notepad++
choco install freefilesync -y
choco install paint.net -y --allowEmptyChecksums
#choco install 7zip -y
winget install --id 7zip.7zip
#choco install Winmerge -y --allowEmptyChecksums
winget install --id WinMerge.WinMerge
#choco install treesizefree -y --allowEmptyChecksums
winget install --id JAMSoftware.TreeSizeFree
choco install scansnapmanager -y
#choco install microsoft-edge-insider-dev -y
winget install --id Microsoft.EdgeBeta
#choco install gitter -y
winget install --id Gitlab,Gitter.IM
#choco install spotify -y
winget install --id Spotify.Spotify
#choco install microsoft-windows-terminal -y
winget install --id Microsoft.WindowsTerminal
#choco install telnet -y
winget install --id PuTTY.PuTTY
choco install openssh -y


#Development
#choco install visualstudio2019enterprise -y
winget install --id Microsoft.VisualStudio.2019.Enterprise
#choco install vscode-insiders -y
#choco install intellijidea-ultimate -y
#choco install fiddler4 -y
winget install --id Telerik.Fiddler
#choco install git -y
winget install Git.Git
#choco install tortoisegit -y
winget install --id Tortoisegit.Tortoisegit  
#choco install powershell-core -y
winget install --id Microsoft.PowerShell
#choco install resharper-platform -y
winget install --id JetBrains.Resharper
#choco install docker-for-windows --pre -y
winget install --id Docker.DockerDesktop
choco install curl -y
#choco install postman -y
winget install --id Postman.Postman
#choco install sql-server-management-studio -y
winget install --id Microsoft.SQLServerManagementStudio
choco install ravendb -y

#Kubernetes
choco install kubernetes-cli -y
choco install draft -y
choco install kubernetes-helm -y
#choco install minikube -y
winget install --id Kubernetes.Minikube
#choco install GoogleChrome -y
#choco install minishift -y

#Java & OSS
#choco install openjdk -y
winget install --id Microsoft.OpenJDK.16
#choco install zulu -y
#choco install maven -y
winget install --id tantowi.maven
#choco install nodejs -y
winget install --id OpenJS.Nodejs
#choco install python3 -y
winget install Python.Python3
#choco install wsl-ubuntu-1804 -y
winget install Canonical.Ubuntu
choco install terraform -y

#Azure
#choco install azurepowershell -y
#choco install microsoftazurestorageexplorer -y
winget install --id Microsoft.AzureStorageExplorer
#choco install azure-documentdb-emulator -y
winget install --id Microsoft.CosmosEmulator
choco install cosmosdbexplorer -y
#choco install azurestorageemulator -y
winget install --id Microsoft.StorageEmulator
#choco install azure-cli -y
winget install --id Microsoft.AzureCLI
choco install windowsazurepowershell -y

#choco install azure-functions-core-tools -y
winget install --id Microsoft.AzureFunctionsCoreTools
#choco install az.powershell -y
winget install --id Microsoft.AzureDataStudio


Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart

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
 az extension add -y --source https://azureclitemp.blob.core.windows.net/spring-cloud/spring_cloud-0.1.0-py2.py3-none-any.whl
 
