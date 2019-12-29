@echo off
title Cari File
set file=E:\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\*.java

if exist %file% (
	echo ada file java pada directory
	echo %file%
	attrib /s /d %file%
	) else (
	echo file tidak ditemukan
	)


pause>nul