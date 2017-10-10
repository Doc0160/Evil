Set-ExecutionPolicy -ExecutionPolicy Bypass

(New-Object System.Net.WebClient).DownloadFile('http://random.cat/i/1249647860.jpg', 'cat.jpg')
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value "$($pwd)\cat.jpg"
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
