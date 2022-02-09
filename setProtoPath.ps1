if($IsLinux){
    $protoRepoPath = $(Get-Location).Path;
    sh & "export PROTOREPO='$protoRepoPath'" >> ~/.profile
    Write-Host "export PROTOREPO='$protoRepoPath' added to your .profile" -ForegroundColor Green
}

if($IsWindows){
    $protoRepoPath = Get-Location;
    [Environment]::SetEnvironmentVariable("PROTOREPO", $protoRepoPath.Path, "Machine")
    
    $path = $protoRepoPath.Path;
    Write-Host "'$path' added to your environment variables" -ForegroundColor Green
}