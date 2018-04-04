if ($env:DOCKER_HOST -match "\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b")
{
    Start-Process (-Join('http://', $Matches[0], '/'))
}