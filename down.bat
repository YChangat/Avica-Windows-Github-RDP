@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/YChangat/Avica-Windows-Github-RDP/refs/heads/main/setup.py
curl -s -L -o Avica_setup.exe "https://download.avica.link/downloader/Avica_setup.exe"
curl -s -L -o show.bat https://raw.githubusercontent.com/YChangat/Avica-Windows-Github-RDP/refs/heads/main/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/YChangat/Loop-For-Win10/refs/heads/main/loop.bat
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin Jor3a_Ti9niya
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "Avica_setup.exe"
python setup.py
