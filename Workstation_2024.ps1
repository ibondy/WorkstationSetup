Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft_remoteDesktopConnection -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers-DisposableClientVM -Online -NoRestart

winget install --id Microsoft.VisualStudioCode.Insiders
winget install --id Microsoft.Office
winget install --id Microsoft.Teams
winget install --id Microsoft.PowerBI

#Tools
winget install --id DominikReichl.KeePass
winget install -id Notepad++.Notepad++
winget install --id 7zip.7zip
winget install --id WinMerge.WinMerge
winget install --id JAMSoftware.TreeSizeFree
winget install --id Microsoft.Edge
winget install --id Spotify.Spotify
winget install --id 9N0DX20HK701 #Microsoft.Windows.terminal
winget install --id PuTTY.PuTTY
winget install --id Logitech.Options 
winget install --id Microsoft.PowerToys
winget install --id Prusa3D.PrusaSlicer
winget install --id Yubico.Authenticator
winget install --id Microsoft.WindowsAdminCenter
winget install --id Citrix.Workspace 

#Development
winget install --id Microsoft.VisualStudio.2022.Enterprise.Preview -e
winget install --id Microsoft.DotNet.SDK.9
winget install --id Microsoft.VisualStudio.2022.Enterprise.Preview -e
winget install --id Telerik.Fiddler
winget install --id Git.Git
winget install --id Tortoisegit.Tortoisegit  
winget install --id Microsoft.PowerShell
winget install --id cURL.cURL
winget install --id RedHat.Podman-Desktop

#Kubernetes
winget install --id Derailed.k9s  #kubernetes-cli 
winget install --id Helm.Helm

#Java
winget install --id Microsoft.OpenJDK.21
winget install --id tantowi.maven
winget install --id OpenJS.Nodejs
winget install Python.Python3

#OSS
winget install Canonical.Ubuntu.2404

#Azure
winget install --id Microsoft.AzureStorageExplorer
winget install --id Microsoft.CosmosEmulator
winget install --id Microsoft.StorageEmulator
winget install --id Microsoft.AzureCLI
winget install --id Microsoft.AzureFunctionsCoreTools
winget install --id Microsoft.AzureDataStudio

#developer mode enabled
 reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
 
#PowerShell Modules
winget install --id Microsoft.Powershell
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name AzureRM -Force -SkipPublisherCheck
Install-Module WslInterop
Import-WslCommand "awk", "emacs", "grep", "head", "less", "ls", "man", "sed", "seq", "ssh", "tail", "vim"

#Anyrail
#Itrain
#ScanSnap manager
#LorexCloud
