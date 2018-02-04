:: command to build big Vim 64 bit with OLE, Perl and Python.
:: First run: %VCDIR%\vcvarsall.bat x86_amd64
:: Ruby and Tcl are excluded, doesn't seem to work.

@echo off

if not exist VCDIR SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 8\VC\"

set opts=%opts% CPU=AMD64 
set opts=%opts% GUI=yes 
set opts=%opts% OLE=yes 
set opts=%opts% PERL=C:\strawberry\perl
set opts=%opts% DYNAMIC_PERL=yes 
set opts=%opts% PERL_VER=526 

set opts=%opts% PYTHON=c:\python27 
set opts=%opts% PYTHON_VER=27 

set opts=%opts% IME=yes 
set opts=%opts% CSCOPE=yes

%VCDIR%\bin\nmake -f Make_mvc.mak %opts% 

rem set opts=%opts% DYNAMIC_PYTHON=yes 
rem set opts=%opts% PYTHON3=%TOOLDIR%python35 
rem set opts=%opts% DYNAMIC_PYTHON3=yes 
rem set opts=%opts% PYTHON3_VER=35  %1 


