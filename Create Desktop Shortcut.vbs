' Creates a Desktop shortcut for "A1 Tech.bat" that shows the A1 TECH logo
' as its icon, instead of the plain .bat icon.
'
' Just double-click this file once. A shortcut named "A1 Tech" will appear
' on your Desktop — pin that shortcut to your Taskbar/Start Menu if you like,
' it will always show the A1 TECH logo.

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
batPath   = scriptDir & "\A1 Tech.bat"
iconPath  = scriptDir & "\assets\Logo.ico"
desktop   = shell.SpecialFolders("Desktop")
lnkPath   = desktop & "\A1 Tech.lnk"

If Not fso.FileExists(batPath) Then
    MsgBox "Could not find 'A1 Tech.bat' next to this script.", vbCritical, "A1 TECH"
    WScript.Quit 1
End If

Set shortcut = shell.CreateShortcut(lnkPath)
shortcut.TargetPath = batPath
shortcut.WorkingDirectory = scriptDir
shortcut.WindowStyle = 7 ' minimized console window
shortcut.Description = "A1 TECH Document Studio"
If fso.FileExists(iconPath) Then
    shortcut.IconLocation = iconPath & ",0"
End If
shortcut.Save

MsgBox "Done! An 'A1 Tech' shortcut with the A1 TECH logo has been added to your Desktop." & vbCrLf & vbCrLf & "You can pin it to the Taskbar or Start Menu from there.", vbInformation, "A1 TECH"
