@echo off

::Nvim
curl https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip -LJO

tar xzvf nvim-win64.zip -C C:\Users\arthur.gordo
rmdir nvim-win64.zip

tar xzvf nvim-config.zip -C C:\Users\arthur.gordo\AppData\Local
rmdir nvim-config.zip

::Nerd Fonts
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -LJO

mkdir JetBrainsMono
tar xzvf JetBrainsMono.zip -C JetBrainsMono
rmdir JetBrainsMono.zip
cd JetBrainsMono
::still needs admin permissions
copy "JetBrainsMonoNerdFont-Bold.ttf" "%WINDIR%\Fonts"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "JetBrainsMonoNerdFont-Bold (TrueType)" /t REG_SZ /d JetBrainsMonoNerdFont-Bold.ttf /f
cd ..
::edit C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.19.10573.0_x64__8wekyb3d8bbwe to set the terminal font
::or replace file with config file from github

::AutoHotkey
curl https://github.com/AutoHotkey/AutoHotkey/releases/download/v2.0.12/AutoHotkey_2.0.12_setup.exe -LJO
AutoHotkey_2.0.12_setup.exe /silent

cd C:\Users\arthur.gordo\Documents
mkdir AutoHotkey
cd AutoHotkey
echo CapsLock::Esc > basics.ahk
echo τ::' >> basics.ahk
echo '::τ >> basics.ahk
.\basics.ahk
cd ..

mkdir scripts
cd scripts
echo "#include <stdio.h>" > bc.c
echo "" >> bc.c
echo "int main() {" >> bc.c
echo "" >> bc.c    
echo "return 0;" >> bc.c
echo "}" >> bc.c
wt cmd /k "cd Documents\scripts && nvim bc.c"

