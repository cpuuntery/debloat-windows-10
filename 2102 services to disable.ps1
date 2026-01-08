$regpath='HKLM:\SYSTEM\CurrentControlSet\Services'
Set-ItemProperty -Path ($regpath+"\AppReadiness") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\AppVClient") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\AppXSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\BthAvctpSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DialogBlockingService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DispBrokerDesktopSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DisplayEnhancementService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DPS") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DsmSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DusmSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\fdPHost") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\LanmanWorkstation") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\lfsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\lmhosts") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\MapsBroker") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\MsKeyboardFilter") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NcbService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NcdAutoSetup") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NetTcpPortSharing") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\PcaSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RasMan") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RemoteAccess") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RemoteRegistry") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\shpamsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\Spooler") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SSDPSRV") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\ssh-agent") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SstpSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\TabletInputService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\TrkWks") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\tzautoupdate") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\VSS") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\WSearch") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\OneSyncSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\cbdhsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\CDPUserSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\Server") -Name Start -Value 4



Set-Service -Name AppReadiness -StartupType Disabled
Set-Service -Name AppVClient -StartupType Disabled
Set-Service -Name AppXSvc -StartupType Disabled
Set-Service -Name BthAvctpSvc -StartupType Disabled
Set-Service -Name DialogBlockingService -StartupType Disabled
Set-Service -Name DispBrokerDesktopSvc -StartupType Disabled
Set-Service -Name DisplayEnhancementService -StartupType Disabled
Set-Service -Name DPS -StartupType Disabled
Set-Service -Name DsmSvc -StartupType Disabled
Set-Service -Name DusmSvc -StartupType Disabled
Set-Service -Name fdPHost -StartupType Disabled
Set-Service -Name LanmanWorkstation -StartupType Disabled
Set-Service -Name lfsvc -StartupType Disabled
Set-Service -Name lmhosts -StartupType Disabled
Set-Service -Name MapsBroker -StartupType Disabled
Set-Service -Name MsKeyboardFilter -StartupType Disabled
Set-Service -Name NcbService -StartupType Disabled
Set-Service -Name NcdAutoSetup -StartupType Disabled
Set-Service -Name NetTcpPortSharing -StartupType Disabled
Set-Service -Name PcaSvc -StartupType Disabled
Set-Service -Name RasMan -StartupType Disabled
Set-Service -Name RemoteAccess -StartupType Disabled
Set-Service -Name RemoteRegistry -StartupType Disabled
Set-Service -Name shpamsvc -StartupType Disabled
Set-Service -Name Spooler -StartupType Disabled
Set-Service -Name SSDPSRV -StartupType Disabled
Set-Service -Name ssh-agent -StartupType Disabled
Set-Service -Name SstpSvc -StartupType Disabled
Set-Service -Name TabletInputService -StartupType Disabled
Set-Service -Name TrkWks -StartupType Disabled
Set-Service -Name tzautoupdate -StartupType Disabled
Set-Service -Name VSS -StartupType Disabled
Set-Service -Name WSearch -StartupType Disabled
Set-Service -Name Server -StartupType Disabled



$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\BITS"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}



$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\DiagTrack"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\DoSvc"
Set-ItemProperty -Path  $RegistryPath -Name ImagePath -Value null
$key = Get-Item -Path $registryPath
$users = @("TrustedInstaller", "ALL APPLICATION PACKAGES", "CREATOR OWNER", "SYSTEM", "Administrators", "Users")
foreach ($user in $users) {
    $acl = Get-Acl -Path $registryPath
    $rule = New-Object System.Security.AccessControl.RegistryAccessRule($user, "FullControl", "Deny")
    $acl.AddAccessRule($rule)
    Set-Acl -Path $registryPath -AclObject $acl
}


