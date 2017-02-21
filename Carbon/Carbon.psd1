# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Module manifest for module 'Carbon'
#
# Generated by: Aaron Jensen
#
# Generated on: 8/30/2011
#

#Requires -Version 4

@{

    # Script module or binary module file associated with this manifest
    RootModule = 'Carbon.psm1'

    # Version number of this module.
    ModuleVersion = '2.4.1'

    # ID used to uniquely identify this module
    GUID = '075d9444-c01b-48c3-889a-0b3490716fa2'

    # Author of this module
    Author = 'Aaron Jensen'

    # Company or vendor of this module
    CompanyName = ''

    # Copyright statement for this module
    Copyright = 'Copyright 2011 - 2016 Aaron Jensen.'
    
    # Description of the functionality provided by this module
    Description = @'
Carbon is a PowerShell module for automating the configuration Windows 7, 8, 2008, and 2012 and automation the installation and configuration of Windows applications, websites, and services. It can configure and manage:

 * Local users and groups
 * IIS websites, virtual directories, and applications
 * File system, registry, and certificate permissions
 * Certificates
 * Privileges
 * Services
 * Encryption
 * Junctions
 * Hosts file
 * INI files
 * Performance counters
 * Shares
 * .NET connection strings and app settings
 * And much more!

All functions are idempotent: when run multiple times with the same arguments, your system will be in the same state without failing or producing errors.
'@

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '4.0'

    # Name of the Windows PowerShell host required by this module
    PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = @( 'bin\Carbon.dll' )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(
                        'Carbon.types.ps1xml',
                        'Types\System.ServiceProcess.ServiceController.types.ps1xml'
                      )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @( 'Carbon.format.ps1xml', 'Formats\Carbon.Security.HttpUrlAcl.format.ps1xml' )

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @()

    # Functions to export from this module
    FunctionsToExport = @(
                            'Add-GroupMember',
                            'Add-IisDefaultDocument',
                            'Add-TrustedHost',
                            'Assert-AdminPrivilege',
                            'Assert-FirewallConfigurable',
                            'Assert-Service',
                            'Clear-DscLocalResourceCache',
                            'Clear-MofAuthoringMetadata',
                            'Clear-TrustedHost',
                            'Complete-Job',
                            'Compress-Item',
                            'ConvertFrom-Base64',
                            'Convert-SecureStringToString',
                            'ConvertTo-Base64',
                            'ConvertTo-ContainerInheritanceFlags',
                            'ConvertTo-InheritanceFlag',
                            'ConvertTo-PropagationFlag',
                            'ConvertTo-SecurityIdentifier',
                            'Convert-XmlFile',
                            'Copy-DscResource',
                            'Disable-AclInheritance',
                            'Disable-FirewallStatefulFtp',
                            'Disable-IEEnhancedSecurityConfiguration',
                            'Disable-IisSecurityAuthentication',
                            'Disable-NtfsCompression',
                            'Enable-AclInheritance',
                            'Enable-FirewallStatefulFtp',
                            'Enable-IEActivationPermission',
                            'Enable-IisDirectoryBrowsing',
                            'Enable-IisSecurityAuthentication',
                            'Enable-IisSsl',
                            'Enable-NtfsCompression',
                            'Expand-Item',
                            'Find-ADUser',
                            'Format-ADSearchFilterValue',
                            'Get-ADDomainController',
                            'Get-Certificate',
                            'Get-CertificateStore',
                            'Get-ComPermission',
                            'Get-ComSecurityDescriptor',
                            'Get-DscError',
                            'Get-DscWinEvent',
                            'Get-FileShare',
                            'Get-FileSharePermission',
                            'Get-FirewallRule',
                            'Get-Group',
                            'Get-HttpUrlAcl',
                            'Get-IisApplication',
                            'Get-IisAppPool',
                            'Get-IisConfigurationSection',
                            'Get-IisHttpHeader',
                            'Get-IisHttpRedirect',
                            'Get-IisMimeMap',
                            'Get-IisSecurityAuthentication',
                            'Get-IisVersion',
                            'Get-IisWebsite',
                            'Get-IPAddress',
                            'Get-Msi',
                            'Get-MsmqMessageQueue',
                            'Get-MsmqMessageQueuePath',
                            'Get-PathProvider',
                            'Get-PathToHostsFile',
                            'Get-PerformanceCounter',
                            'Get-Permission',
                            'Get-PowerShellModuleInstallPath',
                            'Get-PowershellPath',
                            'Get-Privilege',
                            'Get-ProgramInstallInfo',
                            'Get-RegistryKeyValue',
                            'Get-ScheduledTask',
                            'Get-ServiceAcl',
                            'Get-ServiceConfiguration',
                            'Get-ServicePermission',
                            'Get-ServiceSecurityDescriptor',
                            'Get-SslCertificateBinding',
                            'Get-TrustedHost',
                            'Get-User',
                            'Get-WindowsFeature',
                            'Get-WmiLocalUserAccount',
                            'Grant-ComPermission',
                            'Grant-HttpUrlPermission',
                            'Grant-MsmqMessageQueuePermission',
                            'Grant-Permission',
                            'Grant-Privilege',
                            'Grant-ServiceControlPermission',
                            'Grant-ServicePermission',
                            'Initialize-Lcm',
                            'Install-Certificate',
                            'Install-Directory',
                            'Install-FileShare',
                            'Install-Group',
                            'Install-IisApplication',
                            'Install-IisAppPool',
                            'Install-IisVirtualDirectory',
                            'Install-IisWebsite',
                            'Install-Junction',
                            'Install-Msi',
                            'Install-Msmq',
                            'Install-MsmqMessageQueue',
                            'Install-PerformanceCounter',
                            'Install-RegistryKey',
                            'Install-ScheduledTask',
                            'Install-Service',
                            'Install-User',
                            'Install-WindowsFeature',
                            'Invoke-AppCmd',
                            'Invoke-PowerShell',
                            'Join-IisVirtualPath',
                            'Lock-IisConfigurationSection',
                            'New-Credential',
                            'New-Junction',
                            'New-RsaKeyPair',
                            'New-TempDirectory',
                            'Protect-String',
                            'Read-File',
                            'Remove-DotNetAppSetting',
                            'Remove-EnvironmentVariable',
                            'Remove-GroupMember',
                            'Remove-HostsEntry',
                            'Remove-IisMimeMap',
                            'Remove-IniEntry',
                            'Remove-Junction',
                            'Remove-RegistryKeyValue',
                            'Remove-SslCertificateBinding',
                            'Reset-HostsFile',
                            'Reset-MsmqQueueManagerID',
                            'Resolve-FullPath',
                            'Resolve-Identity',
                            'Resolve-IdentityName',
                            'Resolve-NetPath',
                            'Resolve-PathCase',
                            'Resolve-RelativePath',
                            'Restart-RemoteService',
                            'Revoke-ComPermission',
                            'Revoke-HttpUrlPermission',
                            'Revoke-Permission',
                            'Revoke-Privilege',
                            'Revoke-ServicePermission',
                            'Set-DotNetAppSetting',
                            'Set-DotNetConnectionString',
                            'Set-EnvironmentVariable',
                            'Set-HostsEntry',
                            'Set-IisHttpHeader',
                            'Set-IisHttpRedirect',
                            'Set-IisMimeMap',
                            'Set-IisWebsiteID',
                            'Set-IisWebsiteSslCertificate',
                            'Set-IisWindowsAuthentication',
                            'Set-IniEntry',
                            'Set-RegistryKeyValue',
                            'Set-ServiceAcl',
                            'Set-SslCertificateBinding',
                            'Set-TrustedHost',
                            'Split-Ini',
                            'Start-DscPullConfiguration',
                            'Test-AdminPrivilege',
                            'Test-DotNet',
                            'Test-DscTargetResource',
                            'Test-FileShare',
                            'Test-FirewallStatefulFtp',
                            'Test-Group',
                            'Test-GroupMember',
                            'Test-Identity',
                            'Test-IisAppPool',
                            'Test-IisConfigurationSection',
                            'Test-IisSecurityAuthentication',
                            'Test-IisWebsite',
                            'Test-IPAddress',
                            'Test-MsmqMessageQueue',
                            'Test-NtfsCompression',
                            'Test-OSIs32Bit',
                            'Test-OSIs64Bit',
                            'Test-PathIsJunction',
                            'Test-PerformanceCounter',
                            'Test-PerformanceCounterCategory',
                            'Test-Permission',
                            'Test-PowerShellIs32Bit',
                            'Test-PowerShellIs64Bit',
                            'Test-Privilege',
                            'Test-RegistryKeyValue',
                            'Test-ScheduledTask',
                            'Test-Service',
                            'Test-SslCertificateBinding',
                            'Test-TypeDataMember',
                            'Test-UncPath',
                            'Test-User',
                            'Test-WindowsFeature',
                            'Test-ZipFile',
                            'Uninstall-Certificate',
                            'Uninstall-Directory',
                            'Uninstall-FileShare',
                            'Uninstall-Group',
                            'Uninstall-IisAppPool',
                            'Uninstall-IisWebsite',
                            'Uninstall-Junction',
                            'Uninstall-MsmqMessageQueue',
                            'Uninstall-PerformanceCounterCategory',
                            'Uninstall-ScheduledTask',
                            'Uninstall-Service',
                            'Uninstall-User',
                            'Uninstall-WindowsFeature',
                            'Unlock-IisConfigurationSection',
                            'Unprotect-String',
                            'Write-DscError',
                            'Write-File'
                        )

    # Cmdlets to export from this module
    CmdletsToExport = ''

    # Variables to export from this module
    VariablesToExport = ''

    # Aliases to export from this module
    AliasesToExport = '*'

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @()

    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('.net','acl','active-directory','certificates','com','compression','computer','credential','cryptography','directory','dsc','dsc-resources','encryption','environment','file-system','firewall','groups','hosts-file','http','identity','iis','ini','installers','internet-explorer','ip','junctions','msi','msmq','netsh','networking','ntfs','operating-system','os','path','performance-counters','powershell','principal','privileges','programs','registry','rsa','scheduled-tasks','security','service','shares','sid','smb','ssl','text','trusted-host','users','wcf','windows','windows-features','xml','zip','PSModule','DscResources','setup','automation','admin')

            # A URL to the license for this module.
            LicenseUri = 'http://www.apache.org/licenses/LICENSE-2.0'

            # A URL to the main website for this project.
            ProjectUri = 'http://get-carbon.org/'

            # ReleaseNotes of this module
            ReleaseNotes = @'
## Bug Fixes

 * Fixed: `Carbon_Permission` fails when revoking permissions and the `Permissions` property doesn''t have a value.
 * Fixed: `Protect-String` doesn't convert secure strings properly so they get encrypted with extra bytes in them.
 * Fixed: `Revoke-Permission' fails when an identity has multiple access control entries on an item. Thanks to [bozho_](https://bitbucket.org/bozho_/) for reporting [issue #221](https://bitbucket.org/splatteredbits/carbon/issues/221/community-revoke-permission-fails-if-the) and contributing the fix.
 * Fixed: `Compress-Item`' writes an error when using the `WhatIf` switch.
 * Fixed: `Install-IisWebsite` help examples contain invalid/broken code (thanks to John Mitchell for reporting).
 * Fixed: `Install-Service` fails when password contains double quote character, i.e. `"` (fixes [issue #219](https://bitbucket.org/splatteredbits/carbon/issues/219/community-install-service-fails-to)).
 * Fixed: `Read-File` and `Write-File` fail to retry writing to a locked file when `$Global:Error` is full. Fixes [issue #217](https://bitbucket.org/splatteredbits/carbon/issues/217/community-error-handling-in-read-file-and). 
 * Fixed: `Get-FirewallRule` sets the `EdgeTraversalPolicy` to `DeferUser` on rules whose policy is "defer to application". 
 * Fixed: `Get-FirewallRule` fails on non-english-speaking computers. (It was parsing the output of `netsh advfirewall`. Now it uses the Windows Firewall with Advanced Security API.) [Fixes [issue #208](https://bitbucket.org/splatteredbits/carbon/issues/208/community-get-firewallrule-could-not-find).
 * Fixed: `Get-FirewallRule` incorrectly parsed interface types. It assumed interface type was one of multiple values. In reality, it can be set to one or more different values. The underlying enumeration and its values have been updated to be a set of flags (i.e. a bit field).
 * Fixed: `Carbon_FirewallRule` fails when Profile property has more than one value.
 * Fixed: `Get-ScheduledTask` doesn't handle when a scheduled task doesn't exist on Windows 2008.
'@
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
}
