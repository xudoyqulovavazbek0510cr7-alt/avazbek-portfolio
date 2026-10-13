@echo off
title Avazbek Portfolio - Rasmni o'rnatish
color 0b
echo ========================================================
echo   Avazbek Shaxsiy Portfoliyasi - Rasmni Nusxalash
echo ========================================================
echo.
if not exist "images" (
    mkdir "images"
    echo [OK] images papkasi yaratildi.
)

set "SOURCE_PHOTO=C:\Users\AliCom\.gemini\antigravity-ide\brain\efc614e7-1c92-4f25-924d-c75cc9d5aea1\.user_uploaded\media_1792000004144.jpg"

if exist "%SOURCE_PHOTO%" (
    copy /Y "%SOURCE_PHOTO%" "images\avazbek.jpg" >nul
    echo [MUVAFFAQIN!] Siz yuklagan asl rasm muvaffaqiyatli images\avazbek.jpg ga o'rnatildi!
) else (
    echo [ESLATMA] Asl rasm topilmadi. Agar boshqa rasmingiz bo'lsa,
    echo uni images\avazbek.jpg nomi bilan saqlashingiz mumkin.
)

echo.
echo Endi index.html faylini brauzeringizda bemalol ochib ko'rishingiz mumkin!
echo ========================================================
pause
