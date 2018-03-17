::Ouvrir le fichier courant avec l'application par défaut de l'OS (F11)
::Ouvrir le dossier du fichier courrant dans VIM (ALT+F11)
@echo off
start "" "%SystemRoot%\explorer.exe" %1
exit /b

