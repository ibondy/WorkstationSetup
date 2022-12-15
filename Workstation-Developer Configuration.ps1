#Set-ExecutionPolicy -ExecutionPolicy unrestricted
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

winget install --id Microsoft.VisualStudioCode.Insiders
winget install --id Microsoft.Office
winget install --id Microsoft.Teams.Preview
winget install --id Microsoft.PowerBI

#Tools
winget install --id DominikReichl.KeePass
choco install sysinternals -y
winget install -id Notepad++.Notepad++
choco install freefilesync -y
choco install paint.net -y --allowEmptyChecksums
winget install --id 7zip.7zip
winget install --id WinMerge.WinMerge
winget install --id JAMSoftware.TreeSizeFree
choco install scansnapmanager -y
winget install --id Microsoft.EdgeBeta
winget install --id Gitlab,Gitter.IM
winget install --id Spotify.Spotify
winget install --id Microsoft.WindowsTerminal
winget install --id PuTTY.PuTTY
choco install openssh -y


#Development
winget install --id Microsoft.VisualStudio.2019.Enterprise
winget install --id Telerik.Fiddler
winget install Git.Git
winget install --id Tortoisegit.Tortoisegit  
winget install --id Microsoft.PowerShell
winget install --id JetBrains.Resharper
winget install --id Docker.DockerDesktop
choco install curl -y
winget install --id Postman.Postman
winget install --id Microsoft.SQLServerManagementStudio
choco install ravendb -y

#Kubernetes
choco install kubernetes-cli -y
choco install draft -y
choco install kubernetes-helm -y
winget install --id Kubernetes.Minikube


#Java & OSS
winget install --id Microsoft.OpenJDK.16
winget install --id tantowi.maven
winget install --id OpenJS.Nodejs
winget install Python.Python3
winget install Canonical.Ubuntu


#Azure
winget install --id Microsoft.AzureStorageExplorer
winget install --id Microsoft.CosmosEmulator
winget install --id Microsoft.StorageEmulator
winget install --id Microsoft.AzureCLI
winget install --id Microsoft.AzureFunctionsCoreTools
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
 
