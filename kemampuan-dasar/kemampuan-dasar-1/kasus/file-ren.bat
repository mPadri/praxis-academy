@echo off
title Cari File
set file=E:\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\*.java

if exist %file% (
	echo ada file java pada directory
	attrib /s /d %file%
	goto :label
	) else (
	echo file tidak ditemukan
	pause>nul
	exit
	)

:label
choice /c yn /m "ingin merubah file?"
if %errorlevel% == 1 (
	goto :ganti
	) else (
	goto :tidak
	)	

:ganti
cls
set /p namaFile="Tulis Nama File : "
ren %file% %namaFile%.java
echo file telah dirubah
pause>nul

:tidak
cls
echo thanks...
pause>nul
exit

pause>nul