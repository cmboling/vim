
%VCDIR%nmake
-f
Make_mvc.mak
"SET VCDIR="C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin\"
"SET TOOLDIR=E:\

let l='%VCDIR%nmake -f Make_mvc.mak GUI=yes OLE=yes LUA=%TOOLDIR%lua53 DYNAMIC_LUA=yes LUA_VER=53 PERL=%TOOLDIR%perl524 DYNAMIC_PERL=yes PERL_VER=524 PYTHON=%TOOLDIR%python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=%TOOLDIR%python35 DYNAMIC_PYTHON3=yes PYTHON3_VER=35 MZSCHEME=%TOOLDIR%Racket DYNAMIC_MZSCHEME=yes MZSCHEME_VER=3m_a36fs8 RUBY=%TOOLDIR%ruby24 DYNAMIC_RUBY=yes RUBY_VER=24 RUBY_API_VER_LONG=2.4.0 RUBY_MSVCRT_NAME=msvcrt TCL=%TOOLDIR%ActiveTcl TCL_VER=86 TCL_VER_LONG=8.6 DYNAMIC_TCL=yes TCL_DLL=tcl86t.dll %1 IME=yes CSCOPE=yes DIRECTX=yes'

let a = split(l,' ')
let ln=getline('.')

for v in a
	let ln+=1
	call append(ln,v)
endfor
echo a
