$rootPath = "C:\Ruta\Base"
$imageExts = @('.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff')
$audioExts = @('.mp3', '.flac', '.ape', '.cue', '.wav', '.m4a')

Get-ChildItem -Path $rootPath -Directory -Recurse | ForEach-Object {
    $folder = $_
    $files = Get-ChildItem -Path $folder.FullName -File -ErrorAction SilentlyContinue
    if ($files.Count -eq 0) { return }
    
    $imageCount = ($files | Where-Object { $imageExts -contains $_.Extension.ToLower() }).Count
    $audioCount = ($files | Where-Object { $audioExts -contains $_.Extension.ToLower() }).Count
    
    $folderType = $null
    if ($imageCount -gt $files.Count * 0.5) { $folderType = 'Pictures' }
    elseif ($audioCount -gt $files.Count * 0.5) { $folderType = 'Music' }
    
    if ($folderType) {
        $iniPath = Join-Path $folder.FullName "desktop.ini"
        $iniContent = "[.ShellClassInfo]`r`nConfirmFileOp=0`r`n[ViewState]`r`nMode=`r`nVid=`r`nFolderType=$folderType"
        Set-Content -Path $iniPath -Value $iniContent -Force
        (Get-Item $iniPath -Force).Attributes = 'Hidden, System'
        (Get-Item $folder.FullName).Attributes += 'ReadOnly'
    }
}

Stop-Process -Name explorer -Force