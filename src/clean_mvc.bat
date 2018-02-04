@echo off

SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 8\VC\bin\"

call %vcdir%vcvars32.bat
%VCDIR%nmake -f Make_mvc.mak clean
