$webclient = New-Object System.Net.WebClient

$webclient.DownloadFile("https://download.microsoft.com/download/6/4/6/64677D6E-06EA-4DBB-AF05-B92403BB6CB9/ENU/x64/adalsql.msi","$HOME\Downloads\adalsql.msi")

cd "$HOME\Downloads"

$msifile = "$HOME\Downloads\adalsql.msi"

$arguments= ' /qn /l*v .\install_adalsql.txt' 
Start-Process `
     -file  "$msifile" `
     -arg $arguments `
     -passthru | wait-process