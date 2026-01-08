$regpath='HKLM:\SYSTEM\CurrentControlSet\Services'
Set-ItemProperty -Path ($regpath+"\AppReadiness") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\AppVClient") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\AppXSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\BDESVC") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DPS") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DsmSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\DusmSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\HomeGroupListener") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\HomeGroupProvider") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\IKEEXT") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\LanmanServer") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\LanmanWorkstation") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\lfsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\lmhosts") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\MapsBroker") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NcbService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NetTcpPortSharing") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\NvTelemetryContainer") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RasMan") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RemoteAccess") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\RemoteRegistry") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SCardSvr") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SharedAccess") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\shpamsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\Spooler") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SSDPSRV") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\SstpSvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\TabletInputService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\TrkWks") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\UevAgentService") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\VMnetDHCP") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\VMware NAT Service") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\WbioSrvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\WdiServiceHost") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\WPDBusEnum") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\wscsvc") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\WSearch") -Name Start -Value 4
Set-ItemProperty -Path ($regpath+"\Server") -Name Start -Value 4


Set-Service -Name AppReadiness -StartupType Disabled
Set-Service -Name AppVClient -StartupType Disabled
Set-Service -Name AppXSvc -StartupType Disabled
Set-Service -Name BDESVC -StartupType Disabled
Set-Service -Name DPS -StartupType Disabled
Set-Service -Name DsmSvc -StartupType Disabled
Set-Service -Name DusmSvc -StartupType Disabled
Set-Service -Name HomeGroupListener -StartupType Disabled
Set-Service -Name HomeGroupProvider -StartupType Disabled
Set-Service -Name IKEEXT -StartupType Disabled
Set-Service -Name LanmanServer -StartupType Disabled
Set-Service -Name LanmanWorkstation -StartupType Disabled
Set-Service -Name lfsvc -StartupType Disabled
Set-Service -Name lmhosts -StartupType Disabled
Set-Service -Name MapsBroker -StartupType Disabled
Set-Service -Name NcbService -StartupType Disabled
Set-Service -Name NetTcpPortSharing -StartupType Disabled
Set-Service -Name NvTelemetryContainer -StartupType Disabled
Set-Service -Name RasMan -StartupType Disabled
Set-Service -Name RemoteAccess -StartupType Disabled
Set-Service -Name RemoteRegistry -StartupType Disabled
Set-Service -Name SCardSvr -StartupType Disabled
Set-Service -Name SharedAccess -StartupType Disabled
Set-Service -Name shpamsvc -StartupType Disabled
Set-Service -Name Spooler -StartupType Disabled
Set-Service -Name SSDPSRV -StartupType Disabled
Set-Service -Name SstpSvc -StartupType Disabled
Set-Service -Name TabletInputService -StartupType Disabled
Set-Service -Name TrkWks -StartupType Disabled
Set-Service -Name UevAgentService -StartupType Disabled
Set-Service -Name VMnetDHCP -StartupType Disabled
Set-Service -Name VMware NAT Service -StartupType Disabled
Set-Service -Name WbioSrvc -StartupType Disabled
Set-Service -Name WdiServiceHost -StartupType Disabled
Set-Service -Name WPDBusEnum -StartupType Disabled
Set-Service -Name wscsvc -StartupType Disabled
Set-Service -Name Server -StartupType Disabled

Set-Service -Name WSearch -StartupType Disabled
