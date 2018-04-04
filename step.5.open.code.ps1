if ($env:DOCKER_HOST -match "\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b")
{
    if(!(Test-Path .\Angular-App\.vscode))
    {
        New-Item -ItemType "directory" .\Angular-App\.vscode\
    }
    if(!(Test-Path .\Angular-App\.vscode\launch.json))
    {
        $launch=Get-Content -Encoding UTF8 .\Angular-App.vscode.launch.json | ConvertFrom-Json
        $launch.configurations[0].name=-Join("Launch Chrome and Open ", $Matches[0])
        $launch.configurations[0].url=-Join('http://', $Matches[0], '/')
        $launch | ConvertTo-Json | Out-File -Encoding UTF8 .\Angular-App\.vscode\launch.json
    }
}
code .\Angular-App\