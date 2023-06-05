<#
This script will enable auditing and logging of various Windows features using auditpol and Powershell. It must be run as an adminstrator. 
This script may generate errors - ignore them. 
An error being generated does not mean the script is non-functional, only that the specific log stream is not available to the system for some reason.

Errors will look similar to below:
 
    New-Object : Exception calling ".ctor" with "1" argument(s): "The specified channel could not be found"
    At line:257 char:7
    + $log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfigura ...
    +       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        + CategoryInfo          : InvalidOperation: (:) [New-Object], MethodInvocationException
        + FullyQualifiedErrorId : ConstructorInvokedThrowException,Microsoft.PowerShell.Commands.NewObjectCommand



#>


###############
#Security Logs#
###############

#4624-Windows Security Log Event ID 4624 - An account was successfully logged on
C:\windows\system32\auditpol.exe /set /subcategory:"Logon" /success:enable

#4625-Windows Security Log Event ID 4625 - An account failed to log on
C:\windows\system32\auditpol.exe /set /subcategory:"Logon" /failure:enable

#4634-Windows Security Log Event ID 4634 - An account was logged off
C:\windows\system32\auditpol.exe /set /subcategory:"Logoff" /success:enable

#4647-Windows Security Log Event ID 4647 - User initiated logoff
C:\windows\system32\auditpol.exe /set /subcategory:"Logoff" /success:enable

#4648-Windows Security Log Event ID 4648 - A logon was attempted using explicit credentials
C:\windows\system32\auditpol.exe /set /subcategory:"Logon" /success:enable

#4657-Windows Security Log Event ID 4657 - A registry value was modified
C:\windows\system32\auditpol.exe /set /subcategory:"Registry" /success:enable

#4672-Windows Security Log Event ID 4672 - Special privileges assigned to new logon
C:\windows\system32\auditpol.exe /set /subcategory:"Special Logon" /success:enable

#4673-Windows Security Log Event ID 4673 - A privileged service was called
C:\windows\system32\auditpol.exe /set /subcategory:"Sensitive Privilege Use" /success:enable

#4688-Windows Security Log Event ID 4688 - A new process has been created
C:\windows\system32\auditpol.exe /set /subcategory:"Process Creation" /success:enable

#4689-Windows Security Log Event ID 4689 - A process has exited
C:\windows\system32\auditpol.exe /set /subcategory:"Process Termination" /success:enable

#4700-Windows Security Log Event ID 4700 - A scheduled task was enabled
C:\windows\system32\auditpol.exe /set /subcategory:"Other Object Access Events" /success:enable

#4701-Windows Security Log Event ID 4701 - A scheduled task was disabled
C:\windows\system32\auditpol.exe /set /subcategory:"Other Object Access Events" /success:enable

#4702-Windows Security Log Event ID 4702 - A scheduled task was updated
C:\windows\system32\auditpol.exe /set /subcategory:"Other Object Access Events" /success:enable

#4704-Windows Security Log Event ID 4704 - A user right was assigned
C:\windows\system32\auditpol.exe /set /subcategory:"Authorization Policy Change" /success:enable

#4705-Windows Security Log Event ID 4705 - A user right was removed
C:\windows\system32\auditpol.exe /set /subcategory:"Authorization Policy Change" /success:enable

#4719-Windows Security Log Event ID 4719 - System audit policy was changed
C:\windows\system32\auditpol.exe /set /subcategory:"Audit Policy Change" /success:enable

#4720-Windows Security Log Event ID 4720 - A user account was created
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4722-Windows Security Log Event ID 4722 - A user account was enabled
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4723-Windows Security Log Event ID 4723 - An attempt was made to change an account's password
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4724-Windows Security Log Event ID 4724 - An attempt was made to reset an accounts password
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4725-Windows Security Log Event ID 4725 - A user account was disabled
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4726-Windows Security Log Event ID 4726 - A user account was deleted
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4764-Windows Security Log Event ID 4764 - A groups type was changed
C:\windows\system32\auditpol.exe /set /subcategory:"Security Group Management" /success:enable

#4773-Windows Security Log Event ID 4773 - A Kerberos service ticket request failed
C:\windows\system32\auditpol.exe /set /subcategory:"Kerberos Service Ticket Operations" /failure:enable

#4782-Windows Security Log Event ID 4782 - The password hash an account was accessed
C:\windows\system32\auditpol.exe /set /subcategory:"Other Account Management Events" /success:enable

#4798-Windows Security Log Event ID 4798 - A user's local group membership was enumerated.
C:\windows\system32\auditpol.exe /set /subcategory:"User Account Management" /success:enable

#4825-Windows Security Log Event ID 4825 - A user was denied the access to Remote Desktop. By default- users are allowed to connect only if they are members of the Remote Desktop Users group or Administrators group
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#4912-Windows Security Log Event ID 4912 - Per User Audit Policy was changed
C:\windows\system32\auditpol.exe /set /subcategory:"Audit Policy Change" /success:enable

#4946-Windows Security Log Event ID 4946 - A change has been made to Windows Firewall exception list. A rule was added
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4947-Windows Security Log Event ID 4947 - A change has been made to Windows Firewall exception list. A rule was modified
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4948-Windows Security Log Event ID 4948 - A change has been made to Windows Firewall exception list. A rule was deleted
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4949-Windows Security Log Event ID 4949 - Windows Firewall settings were restored to the default values
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4950-Windows Security Log Event ID 4950 - A Windows Firewall setting has changed
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4954-Windows Security Log Event ID 4954 - Windows Firewall Group Policy settings has changed. The new settings have been applied
C:\windows\system32\auditpol.exe /set /subcategory:"Directory Service Replication" /success:enable;C:\windows\system32\auditpol.exe /set /subcategory:"MPSSVC Rule" /success:enable; C:\windows\system32\auditpol.exe /set /subcategory:"Level Policy Change" /success:enable

#4956-Windows Security Log Event ID 4956 - Windows Firewall has changed the active profile
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#5025-Windows Security Log Event ID 5025 - The Windows Firewall Service has been stopped
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#5029-Windows Security Log Event ID 5029 - The Windows Firewall Service failed to initialize the driver
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#5030-Windows Security Log Event ID 5030 - The Windows Firewall Service failed to start
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Packet Drop" /failure:enable

#5031-Windows Security Log Event ID 5031 - The Windows Firewall Service blocked an application from accepting incoming connections on the network.
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /failure:enable

#5032-Windows Security Log Event ID 5032 - Windows Firewall was unable to notify the user that it blocked an application from accepting incoming connections on the network
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#5033-Windows Security Log Event ID 5033 - The Windows Firewall Driver has started successfully
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /success:enable

#5034-Windows Security Log Event ID 5034 - The Windows Firewall Driver has been stopped
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /failure:enable

#5035-Windows Security Log Event ID 5035 - The Windows Firewall Driver failed to start
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /failure:enable

#5037-Windows Security Log Event ID 5037 - The Windows Firewall Driver detected critical runtime error. Terminating
C:\windows\system32\auditpol.exe /set /subcategory:"File Share" /success:enable

#5050-Windows Security Log Event ID 5050 - An attempt to programmatically disable the Windows Firewall using a call to INetFwProfile.FirewallEnabled(FALSE
C:\windows\system32\auditpol.exe /set /subcategory:"File Share" /success:enable

#5140-Windows Security Log Event ID 5140 - A network share object was accessed
C:\windows\system32\auditpol.exe /set /subcategory:"File Share" /success:enable

#5142-Windows Security Log Event ID 5142 - A network share object was added.
C:\windows\system32\auditpol.exe /set /subcategory:"File Share" /success:enable

#5143-Windows Security Log Event ID 5143 - A network share object was modified
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /failure:enable

#5144-Windows Security Log Event ID 5144 - A network share object was deleted.
C:\windows\system32\auditpol.exe /set /subcategory:"Other System Events" /failure:enable

#5146-Windows Security Log Event ID 5146 - The Windows Filtering Platform has blocked a packet
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /success:enable

#5147-Windows Security Log Event ID 5147 - A more restrictive Windows Filtering Platform filter has blocked a packet
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Packet Drop" /failure:enable

#5150-Windows Security Log Event ID 5150 - The Windows Filtering Platform has blocked a packet.
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /success:enable

#5152-Windows Security Log Event ID 5152 - The Windows Filtering Platform blocked a packet
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /success:enable

#5154-Windows Security Log Event ID 5154 - The Windows Filtering Platform has permitted an application or service to listen on a port for incoming connections
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /success:enable

#5155-Windows Security Log Event ID 5155 - The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /failure:enable

#5156-Windows Security Log Event ID 5156 - The Windows Filtering Platform has allowed a connection
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /success:enable

#5157-Windows Security Log Event ID 5157 - The Windows Filtering Platform has blocked a connection
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Connection" /failure:enable

#5158-Windows Security Log Event ID 5158 - The Windows Filtering Platform has permitted a bind to a local port
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Policy Change" /success:enable

#5159-Windows Security Log Event ID 5159 - The Windows Filtering Platform has blocked a bind to a local port
C:\windows\system32\auditpol.exe /set /subcategory:"Other Policy Change Events" /success:enable

#5446-Windows Security Log Event ID 5446 - A Windows Filtering Platform callout has been changed
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Policy Change" /success:enable

#5447-Windows Security Log Event ID 5447 - A Windows Filtering Platform filter has been changed
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Policy Change" /success:enable

#5448-Windows Security Log Event ID 5448 - A Windows Filtering Platform provider has been changed
C:\windows\system32\auditpol.exe /set /subcategory:"Filtering Platform Policy Change" /success:enable

#5449-Windows Security Log Event ID 5449 - A Windows Filtering Platform provider context has been changed
C:\windows\system32\auditpol.exe /set /subcategory:"Other Object Access Events" /success:enable

#5450-Windows Security Log Event ID 5450 - A Windows Filtering Platform sub-layer has been changed
C:\windows\system32\auditpol.exe /set /subcategory:"Other Object Access Events" /success:enable

#5888-Windows Security Log Event ID 5888 - An object in the COM+ Catalog was modified
C:\windows\system32\auditpol.exe /set /subcategory:"System Integrity" /success:enable

################################
#Applications and Services Logs#
################################

#Windows PowerShell
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Windows PowerShell';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Firewall With Advanced Security/FirewallVerbose
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Firewall With Advanced Security/FirewallVerbose';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Firewall With Advanced Security/FirewallDiagnostics
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Firewall With Advanced Security/FirewallDiagnostics';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Firewall With Advanced Security/Firewall
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Firewall With Advanced Security/Firewall';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Firewall With Advanced Security/ConnectionSecurityVerbose
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Firewall With Advanced Security/ConnectionSecurityVerbose';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Firewall With Advanced Security/ConnectionSecurity
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Firewall With Advanced Security/ConnectionSecurity';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Defender/WHC
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Defender/WHC';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows Defender/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows Defender/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-UAC/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-UAC/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-UAC-FileVirtualization/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-UAC-FileVirtualization/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-RDPClient/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-RDPClient/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TaskScheduler/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TaskScheduler/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SMBServer/Security
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SMBServer/Security';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SMBServer/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SMBServer/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SMBServer/Connectivity
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SMBServer/Connectivity';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmbClient/Security
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmbClient/Security';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SMBClient/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SMBClient/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmbClient/Connectivity
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmbClient/Connectivity';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-PowerShell/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-PowerShell/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-PowerShell/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-PowerShell/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Bits-Client/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Bits-Client/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-RemoteConnectionManager/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-RemoteConnectionManager/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Wordpad/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Wordpad/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteDesktopServices-SessionServices/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteDesktopServices-SessionServices/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Applocker/EXE and DLL
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Applocker/EXE and DLL';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Applocker/MSI and Script
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Applocker/MSI and Script';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-CodeIntegrity/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-CodeIntegrity/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Crypto-DPAPI/BackUpKeySvc
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Crypto-DPAPI/BackUpKeySvc';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Crypto-DPAPI/Debug
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Crypto-DPAPI/Debug';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Crypto-DPAPI/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Crypto-DPAPI/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Crypto-NCrypt/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Crypto-NCrypt/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-DataIntegrityScan/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-DataIntegrityScan/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-DataIntegrityScan/CrashRecovery
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-DataIntegrityScan/CrashRecovery';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-DeviceGuard/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-DeviceGuard/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-DeviceSetupManager/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-DeviceSetupManager/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-DeviceSetupManager/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-DeviceSetupManager/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-Boot/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-Boot/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-EventTracing/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-EventTracing/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-IO/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-IO/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-PnP/Device Configuration
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-PnP/Device Configuration';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-Power/Thermal-Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-Power/Thermal-Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-ShimEngine/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-ShimEngine/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-StoreMgr/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-StoreMgr/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-WDI/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-WDI/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-WHEA/Errors
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-WHEA/Errors';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Kernel-WHEA/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Kernel-WHEA/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-LSA/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-LSA/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-NTLM/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-NTLM/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Partition/Diagnostic
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Partition/Diagnostic';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-ReadyBoost/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-ReadyBoost/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-ReadyBoostDriver/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-ReadyBoostDriver/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteApp and Desktop Connections/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteApp and Desktop Connections/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteApp and Desktop Connections/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteApp and Desktop Connections/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteAssistance/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteAssistance/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteAssistance/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteAssistance/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteDesktopServices-RemoteDesktopSessionManager/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteDesktopServices-RemoteDesktopSessionManager/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-RemoteDesktopServices-RemoteFX-Synth3dvsc/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-RemoteDesktopServices-RemoteFX-Synth3dvsc/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Shell-ConnectedAccountState/ActionCenter
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Shell-ConnectedAccountState/ActionCenter';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Shell-Core/ActionCenter
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Shell-Core/ActionCenter';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Shell-Core/AppDefaults
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Shell-Core/AppDefaults';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Shell-Core/LogonTasksChannel
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Shell-Core/LogonTasksChannel';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Shell-Core/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Shell-Core/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmartCard-Audit/Authentication
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmartCard-Audit/Authentication';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmartCard-DeviceEnum/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmartCard-DeviceEnum/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmartCard-TPM-VCard-Module/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmartCard-TPM-VCard-Module/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-SmartCard-TPM-VCard-Module/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-SmartCard-TPM-VCard-Module/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Store/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Store/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ClientActiveXCore/Microsoft-Windows-TerminalServices-RDPClient/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ClientActiveXCore/Microsoft-Windows-TerminalServices-RDPClient/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ClientUSBDevices/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ClientUSBDevices/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ClientUSBDevices/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ClientUSBDevices/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-LocalSessionManager/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-LocalSessionManager/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-LocalSessionManager/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-LocalSessionManager/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-PnPDevices/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-PnPDevices/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-PnPDevices/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-PnPDevices/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-Printers/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-Printers/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ServerUSBDevices/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ServerUSBDevices/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ServerUSBDevices/Microsoft-Windows-TerminalServices-ServerUSBDevices/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ServerUSBDevices/Microsoft-Windows-TerminalServices-ServerUSBDevices/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ServerUSBDevices/Microsoft-Windows-TerminalServices-ServerUSBDevices/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ServerUSBDevices/Microsoft-Windows-TerminalServices-ServerUSBDevices/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-TerminalServices-ServerUSBDevices/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-TerminalServices-ServerUSBDevices/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-VHDMP/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-VHDMP/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-VPN-Client/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-VPN-Client/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-WER-Diag/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-WER-Diag/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-WLAN-AutoConfig/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-WLAN-AutoConfig/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-WinINet-Config/ProxyConfigChanged
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-WinINet-Config/ProxyConfigChanged';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-WinRM/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-WinRM/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#Microsoft-Windows-Windows-WinRM/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'Microsoft-Windows-Windows-WinRM/Operational';$log.IsEnabled=$true;$log.SaveChanges()

#OpenSSH/Admin
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'OpenSSH/Admin';$log.IsEnabled=$true;$log.SaveChanges()

#OpenSSH/Operational
$log= New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration 'OpenSSH/Operational';$log.IsEnabled=$true;$log.SaveChanges()

