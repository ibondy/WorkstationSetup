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
winget install --id 7zip.7zip
winget install --id WinMerge.WinMerge
winget install --id JAMSoftware.TreeSizeFree
choco install scansnapmanager -y
winget install --id Microsoft.EdgeBeta
winget install --id Gitlab,Gitter.IM
winget install --id Spotify.Spotify
winget install --id Microsoft.WindowsTerminal
winget install --id PuTTY.PuTTY

#Development
winget install --id Microsoft.VisualStudio.2019.Enterprise
winget install --id Telerik.Fiddler
winget install Git.Git
winget install --id Tortoisegit.Tortoisegit  
winget install --id Microsoft.PowerShell
winget install --id JetBrains.Resharper
winget install --id Docker.DockerDesktop
winget install --id cURL.cURL
winget install --id Postman.Postman
winget install --id Microsoft.SQLServerManagementStudio

#Kubernetes
winget install --id Derailed.k9s  #kubernetes-cli 
winget install --id Helm.Helm
winget install --id Kubernetes.Minikube


#Java
winget install --id Microsoft.OpenJDK.21
winget install --id tantowi.maven
winget install --id OpenJS.Nodejs
winget install Python.Python3

#OSS
winget install Canonical.Ubuntu.2204

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

 #developer mode enabled
 reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
 
  #PowerShell Modules
  winget install --id Microsoft.Powershell
  Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
  Install-Module -Name AzureRM -Force -SkipPublisherCheck
  Install-Module WslInterop
  Import-WslCommand "awk", "emacs", "grep", "head", "less", "ls", "man", "sed", "seq", "ssh", "tail", "vim"