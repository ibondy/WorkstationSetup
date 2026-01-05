#Set-ExecutionPolicy -ExecutionPolicy unrestricted
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart
Enable-WindowsOptionalFeature -FeatureName Containers -Online -NoRestart

#Office
winget install --id Microsoft.Office
winget install --id Microsoft.Teams
winget install --id Microsoft.PowerBI


#General software
winget install --id DominikReichl.KeePass
winget install --id 7zip.7zip
winget install --id WinMerge.WinMerge
winget install --id JAMSoftware.TreeSizeFree
winget install --id Microsoft.Edge
winget install --id Spotify.Spotify
winget install --id Microsoft.WindowsTerminal
winget install --id PuTTY.PuTTY
winget install --id Logitech.Options 
winget install --id Microsoft.PowerToys
winget install --id Poly.PlantronicsHub  
winget install --id 9WZDNCRFHWLH #HP Smart Print
#Development
winget install --id Microsoft.VisualStudioCode.Insiders
winget install --id Microsoft.VisualStudio.2026.Enterprise.Preview -e
winget install --id Git.Git
winget install --id Tortoisegit.Tortoisegit  
winget install --id Microsoft.PowerShell
winget install --id cURL.cURL
#Azure
winget install --id Microsoft.Azure.AzureStorageExplorer
winget install --id Microsoft.Azure.CosmosEmulator
winget install --id Microsoft.Azure.StorageEmulator
winget install --id Microsoft.AzureCLI
winget install --id Microsoft.AzureFunctionsCoreTools
winget install --id Microsoft.AzureDataStudio
winget install --id Microsoft.Azd


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
