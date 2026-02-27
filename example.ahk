#Requires AutoHotkey v2.0

#Include AutoUpdate.ahk

Updater := AutoUpdater("ManlyTorch", "Auto-updater-for-AHK")

if not Updater.newVersion {
    ExitApp
}

Response := MsgBox("There's a new update! would you like to download it?`n" . Updater.GetCommitMessages(), "AutoUpdater", "YesNo")
if Response == "Yes" {
    AutoUpdater.UpdateFiles()
}