<#
.SYNOPSIS
Packages and publishes Carbon packages.
#>

# Copyright 2012 Aaron Jensen
# 
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

[CmdletBinding()]
param(
    [Parameter(ParameterSetName='All')]
    [Switch]
    $All,
    
    [Parameter(ParameterSetName='Some')]
    [Switch]
    $Package
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition

if( $pscmdlet.ParameterSetName -eq 'Some' )
{
    $All = $false
}

$licenseFileName = 'LICENSE.txt'

$releaseNotesFileName = 'RELEASE NOTES.txt'
$releaseNotesPath = Join-Path $PSScriptRoot $releaseNotesFileName -Resolve
$releaseNotes = Get-Content $releaseNotesPath

if( $releaseNotes[0] -notmatch "^\# (\d+\.\d+\.\d+)\s*" )
{
    Write-Error "Missing version from release notes file.  The first line must contain the version about to be released."
    exit
}
$version = [Version]$matches[1]
$releaseNotes[0] = "# $version ($((Get-Date).ToString("d MMMM yyyy")))"
if( $All )
{
    $releaseNotes | Out-File -FilePath $releaseNotesPath -Encoding OEM
}

if( $All -or $Package )
{
    Copy-Item (Join-Path $PSScriptRoot LICENSE.txt -Resolve) (Join-Path $PSScriptRoot Carbon\ -Resolve)
}

$carbonZipFileName = "Carbon-$version.zip"
$zipAppPath = Join-Path $PSScriptRoot Tools\7-Zip\7za.exe -Resolve

Push-Location $PSScriptRoot
try
{
    if( $All -or $Package )
    {
        Write-Host "Updating help."
        .\Out-Html.ps1 -OutputDir .\Website\help
        
        if( Test-Path $carbonZipFileName -PathType Leaf )
        {
            Remove-Item $carbonZipFileName
        }

        & $zipAppPath a $carbonZipFileName .\Carbon
        & $zipAppPath a $carbonZipFileName .\Website
        & $zipAppPath a $carbonZipFileName .\Examples
        & $zipAppPath a $carbonZipFileName $licenseFileName
        & $zipAppPath a $carbonZipFileName $releaseNotesFileName
    }
     
    if( $All )
    {   
        hg commit -m "Releasing version $version." $releaseNotesFileName .\Website
        hg tag $version
    }
}
finally
{
    Remove-Item (Join-Path $PSScriptRoot Carbon\$licenseFileName)
    Pop-Location
}