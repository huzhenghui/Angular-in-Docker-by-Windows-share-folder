Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
$env:ANGULAR_IN_DOCKER_NODE_MODULES_TARGET = "/ApplicationRoot/Angular-App/node_modules"
$env:NG_SERVE_PUBLIC_HOST = '127.0.0.1';
docker-compose down