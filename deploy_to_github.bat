@echo off
title Avazbek Portfolio - GitHub ga yuklash
color 0a

echo ========================================================
echo   Avazbek Portfoliosini GitHub ga Joylashtirish Skripti
echo ========================================================
echo.

where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [XATOLIK] Git kompyuteringizda o'rnatilmagan!
    echo Iltimos, https://git-scm.com/downloads manzilidan Git dasturini o'rnating.
    echo.
    pause
    exit /b
)

echo 1. Git ombori tekshirilmoqda...
if not exist ".git" (
    git init
    echo [OK] Git initsializatsiya qilindi.
)

echo 2. Barcha fayllar qo'shilmoqda...
git add .

echo 3. Kommit yaratilmoqda...
git commit -m "Initial commit: Avazbek ultra-modern portfolio website"

echo 4. Asosiy tarmoq 'main' ga sozlanmoqda...
git branch -M main

echo.
echo ========================================================
echo DIQQAT: GitHub da yangi ombor (Repository) yaratganmisiz?
echo Agar yaratgan bo'lsangiz, uning havolasini kiriting.
echo Masalan: https://github.com/username/portfolio.git
echo ========================================================
echo.

set /p REPO_URL="GitHub Repository havolasini kiriting (yoki Enter bosing): "

if "%REPO_URL%"=="" (
    echo.
    echo [ESLATMA] Havola kiritilmadi.
    echo GitHub da repo ochganingizdan keyin ushbu buyruqlarni terminalda bajaring:
    echo    git remote add origin SIZNING_REPO_HAVOLANGIZ
    echo    git push -u origin main
) else (
    git remote remove origin >nul 2>nul
    git remote add origin %REPO_URL%
    echo 5. GitHub ga yuklanmoqda...
    git push -u origin main
    if %errorlevel% equ 0 (
        echo.
        echo ========================================================
        echo [MUVAFFAQIN!] Loyihangiz GitHub ga muvaffaqiyatli yuklandi!
        echo Endi GitHub Pages orqali saytni bepul jonli efirga chiqarishingiz mumkin!
        echo ========================================================
    ) else (
        echo.
        echo [OGOHLANTIRISH] GitHub ga yuklashda xatolik bo'ldi.
        echo Iltimos, GitHub accountingizga login qilganingizni va havola to'g'riligini tekshiring.
    )
)

echo.
pause
