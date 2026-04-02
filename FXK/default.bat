@echo off
cscript %systemroot%\system32\Printing_Admin_Scripts\ko-KR\prnport.vbs -a -r IP_10.93.22.165 -h 10.93.22.165 -o lpr -q lp
cscript %systemroot%\system32\Printing_Admin_Scripts\ko-KR\prncnfg.vbs -t -p "HQ_Cloud Print" -r IP_10.93.22.165
cscript %systemroot%\system32\Printing_Admin_Scripts\ko-KR\prnmngr.vbs -t -p "HQ_Cloud Print"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Print\Monitors\Standard TCP/IP Port\Ports\IP_10.93.22.165" /v "Double Spool" /f /t REG_DWORD /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Print\Monitors\Standard TCP/IP Port\Ports\IP_10.93.22.165" /v "SNMP Enabled" /f /t REG_DWORD /d 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Print\Monitors\Standard TCP/IP Port\Ports\IP_10.93.22.165" /v "SNMP Community" /f /t REG_SZ /d public
:exit
