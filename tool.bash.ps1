Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
$env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/internal-node_modules"
docker-compose -f .\tool\docker-compose.yml run tool-bash