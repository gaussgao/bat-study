:: ./dirlist.bat name.txt D:\relex\ D:\nushens\
:: ./dirlist.bat name.txt D:\relex\ D:\PRVIT
CHCP 65001
@echo off
@echo name[%1] tardir[%2] srcdir[%3]


for /f %%n in (%1) do (

	echo  %%n
	
	md %2\%%n

	for /r %3 %%i in ( *%%n*.jpg ) do (
		
		@echo %%i 	
		@echo "move %%i\* => %2\%%n\" a
		move %%i\*  %2\%%n\
	)
)

