# A very (if not the most) simplistic Makefile for MSVC

SUBSYSTEM = console
!if "$(SUBSYSTEM_VER)" != ""
SUBSYSTEM = $(SUBSYSTEM),$(SUBSYSTEM_VER)
!endif

NOLOGO=
#NOLOGO=/nologo

CC=cl
CFLAGS=/O2 $(NOLOGO)

tee.exe: tee.obj
	$(CC) $(CFLAGS) /Fo$@ $** /link /subsystem:$(SUBSYSTEM)

tee.obj: tee.c
	$(CC) $(CFLAGS) /c $**

clean:
	- del tee.obj
	- del tee.exe
