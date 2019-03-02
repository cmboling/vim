:: command to build big Vim with OLE, Lua, Perl, Python, Racket, Ruby and Tcl

rem SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\bin\"

@echo off

SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 8\VC\bin\"

set opts=
set opts=%opts% GUI=yes 
set opts=%opts% OLE=yes 
set opts=%opts% FEATURES=HUGE

REM set opts=%opts% PERL=D:\sasha\Perl
REM set opts=%opts% PERL=C:\Users\apopl\programs\xampp\perl

set opts=%opts% PERL=C:\Strawberry\perl\
set opts=%opts% DYNAMIC_PERL=yes 
set opts=%opts% PERL_VER=526

set opts=%opts% DYNAMIC_PYTHON=yes PYTHON_VER=27
set opts=%opts% PYTHON=c:\python27\
set opts=%opts% CSCOPE=yes
set opts=%opts% DIRECTX=no

set opts=%opts% DYNAMIC_RUBY=yes
set opts=%opts% RUBY_VER=24
set opts=%opts% RUBY_API_VER_LONG=2.4.0
set opts=%opts% RUBY_MSVCRT_NAME=msvcrt
bi
set opts=%opts% RUBY=C:\ruby24

set opts=%opts% %*

call %vcdir%vcvars32.bat
%VCDIR%nmake -f Make_mvc.mak %opts%

REM LUA=%TOOLDIR%lua53 DYNAMIC_LUA=yes LUA_VER=53 
REM PYTHON3=%TOOLDIR%python36 DYNAMIC_PYTHON3=yes PYTHON3_VER=36 

REM MZSCHEME=%TOOLDIR%Racket 
REM DYNAMIC_MZSCHEME=yes 
REM MZSCHEME_VER=3m_a36fs8 

REM TCL=%TOOLDIR%ActiveTcl 
REM TCL_VER=86 TCL_VER_LONG=8.6 DYNAMIC_TCL=yes TCL_DLL=tcl86t.dll %1 IME=yes 


