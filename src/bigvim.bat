:: command to build big Vim with OLE, Lua, Perl, Python, Racket, Ruby and Tcl
:: \

@echo off

call msvc2010.bat	

SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin\"
SET TOOLDIR=D:\

set opts=
set opts=%opts% %1

REM set opts=%opts% PERL=C:\Perl
set opts=%opts% PERL=C:\Users\apoplavskiy\programs\perl\strawberry_522_32bit\perl
set opts=%opts% DYNAMIC_PERL=yes
set opts=%opts% PERL_VER=522

set opts=%opts% GUI=yes
set opts=%opts% OLE=yes

set opts=%opts% IME=yes
set opts=%opts% CSCOPE=yes

REM set opts=%opts% LUA=%TOOLDIR%lua53
REM set opts=%opts% DYNAMIC_LUA=yes
REM set opts=%opts% LUA_VER=53
REM set opts=%opts% PYTHON=%TOOLDIR%python27
REM set opts=%opts% DYNAMIC_PYTHON=yes
REM set opts=%opts% PYTHON_VER=27
REM set opts=%opts% PYTHON3=%TOOLDIR%python35
REM set opts=%opts% DYNAMIC_PYTHON3=yes
REM set opts=%opts% PYTHON3_VER=35
REM set opts=%opts% MZSCHEME=%TOOLDIR%Racket
REM set opts=%opts% DYNAMIC_MZSCHEME=yes
REM set opts=%opts% MZSCHEME_VER=3m_a36fs8
REM set opts=%opts% TCL=%TOOLDIR%ActiveTcl
REM set opts=%opts% TCL_VER=86
REM set opts=%opts% TCL_VER_LONG=8.6
REM set opts=%opts% DYNAMIC_TCL=yes
REM set opts=%opts% TCL_DLL=tcl86t.dll
REM set opts=%opts% DIRECTX=yes

REM set opts=%opts% RUBY=C:\Ruby22
REM set opts=%opts% DYNAMIC_RUBY=yes
REM set opts=%opts% RUBY_VER=22
REM set opts=%opts% RUBY_API_VER_LONG=2.2.0
REM set opts=%opts% RUBY_MSVCRT_NAME=msvcrt

echo %opts%

%VCDIR%nmake -f Make_mvc.mak %opts%
