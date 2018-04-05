Param(
    [switch]$localNodeModules
)
Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
if($localNodeModules.IsPresent)
{
    $env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/fake"
}
else
{
    $env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/ApplicationRoot/Angular-App/node_modules"
}
docker-compose up