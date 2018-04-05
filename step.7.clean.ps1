Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
Remove-Item -Recurse -Force .\Angular-App\* -Confirm
Remove-Item .\Angular-App\
docker volume rm ${env:SHARE_WINDOWS_FOLDER_TO_DOCKER_DIRECTORY_FILTER_NAME}_node_modules_${env:SHARE_WINDOWS_FOLDER_TO_DOCKER_DIRECTORY_HASH}
docker volume rm ${env:SHARE_WINDOWS_FOLDER_TO_DOCKER_DIRECTORY_FILTER_NAME}_startup_order_${env:SHARE_WINDOWS_FOLDER_TO_DOCKER_DIRECTORY_HASH}