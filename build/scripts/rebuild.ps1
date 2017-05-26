Import-Module "$PSSscriptRoot\solutionhelper.psm1" -Force -Verbose

$solution = Get-CurrentSolution

$msbuild = Get-MSBuildLocation -TargetVsVersion '15.0'

$args = "`"$solution`" /m /v:m /t:Rebuild"

Start-Process $msbuild -ArgumentList $args -NoNewWindow -Wait

[System.Console]::WriteLine()
[System.Console]::Write( "Press any key to continue:" )
[System.Console]::Read()