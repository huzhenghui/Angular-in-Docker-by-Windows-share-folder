Param(
    [switch]$localNodeModules
)
Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
if($localNodeModules.IsPresent)
{
    $env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/internal-node_modules"
}
else
{
    $env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/ApplicationRoot/Angular-App/node_modules"
}
if ($env:DOCKER_HOST -match "\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b")
{
    $env:NG_SERVE_PUBLIC_HOST = $Matches[0];
}
else
{
    $env:NG_SERVE_PUBLIC_HOST = '127.0.0.1';
}
docker-compose up