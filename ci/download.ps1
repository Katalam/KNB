$url = "https://ci.appveyor.com/api/buildjobs/39ar4cg76j1xyqtx/artifacts/target%2Fx86_64-pc-windows-msvc%2Frelease%2Fhemtt.exe"
$dest = "hemtt.exe"
Invoke-WebRequest -Uri $url -OutFile $dest
