Get-Content .\share-windows-folder-to-docker.env | Invoke-Expression
Write-Output ${Env:SHARE_WINDOWS_FOLDER_TO_DOCKER_VOLUMENAME}
docker run --rm -v ${Env:SHARE_WINDOWS_FOLDER_TO_DOCKER_VOLUMENAME}:/Angular-in-Docker-by-Windows-share-folder alpine ls /Angular-in-Docker-by-Windows-share-folder
docker volume inspect ${Env:SHARE_WINDOWS_FOLDER_TO_DOCKER_VOLUMENAME}