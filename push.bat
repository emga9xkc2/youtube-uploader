start "" "D:\Google Drive\My Data\C#\Projects\My App\ChongCracker\bin\Debug\ChongCracker.exe" "%cd%"



@echo off
REM Trích xuất ngày tháng năm
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%

REM Trích xuất giờ phút giây
for /f "tokens=1-3 delims=:.," %%a in ("%time%") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

echo %day%-%month%-%year% %hour%:%minute%:%second% > version.txt

git init
git add .
git commit -m "commit"
git branch -M main
git remote add origin https://github.com/emga9xkc2/youtube-uploader.git
git push -f origin main
@rem git push -f origin main #chay xong nay` neu xay ra loi~ o tren
timeout /t 5
