Remove-Item -Recurse -Force .\Angular-App\* -Confirm
Remove-Item .\Angular-App\
docker volume rm angularindockerbywindowssharefolder_AngularAppNodeModules
docker volume rm angularindockerbywindowssharefolder_Docker-Compose-Startup-Order