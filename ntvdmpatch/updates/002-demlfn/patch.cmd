@echo off
xcopy /S /Y dos W:\nt\private\mvdm\dos
pushd w:\nt
..\ntvdmpatch\util\patch.exe -N -p1 -i ..\ntvdmpatch\updates\002-demlfn\demlfn.patch
rem In case you don't have Win2k DEMLFN already...
..\ntvdmpatch\util\patch.exe -N -p1 -i ..\ntvdmpatch\updates\002-demlfn\doswow.patch
popd
