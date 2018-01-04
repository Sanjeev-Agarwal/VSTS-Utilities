param (
[string] $branchName ="master"
)

Write-Verbose 'Entering task.ps1'

if ($env:BUILD_SOURCEBRANCHNAME -eq $branchName)
{
    Write-Host $branchName "branch check passed. Release triggered" from $env:BUILD_SOURCEBRANCHNAME branch.
}
else
{
    throw "Not a " + $branchName  + " branch, no release triggered from " + $env:BUILD_SOURCEBRANCHNAME   +" branch."
}
