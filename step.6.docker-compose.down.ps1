Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
$env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/ApplicationRoot/Angular-App/node_modules"
docker-compose down