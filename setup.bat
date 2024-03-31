@echo off

::Nvim
curl https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip -LJO

tar xzvf nvim-win64.zip -C C:Users\arthur.gordo
rmdir nvim-win64.zip

tar xzvf nvim-config.zip -C C:Users\arthur.gordo\AppData\Local
rmdir nvim-config.zip


::AutoHotkey
curl https://github.com/AutoHotkey/AutoHotkey/releases/download/v2.0.12/AutoHotkey_2.0.12_setup.exe -LJO
AutoHotkey_2.0.12_setup.exe /silent

cd C:Users\arthur.gordo\Documents
mkdir AutoHotkey
cd AutoHotkey
echo CapsLock::Esc > basics.ahk
echo τ::' >> basics.ahk
echo '::τ >> basics.ahk
.\basics.ahk
cd ..

mkdir scripts
cd scripts
type nul > bc.c
nvim bc.c

