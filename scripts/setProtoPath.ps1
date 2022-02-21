if($IsLinux){
    $protoRepoPath = Split-Path -Path $(Get-Location).Path -Parent;
    sh & "export PROTOREPO='$protoRepoPath'" >> ~/.profile
    Write-Host "export PROTOREPO='$protoRepoPath' added to your .profile" -ForegroundColor Green
}

if($IsWindows){
    $dir = Get-Location;
    $protoRepoPath = Split-Path -Path $dir.Path -Parent;
    [Environment]::SetEnvironmentVariable("PROTOREPO", $protoRepoPath, "Machine")

    $path = $protoRepoPath;
    Write-Host "'$path' added to your environment variables" -ForegroundColor Green
}