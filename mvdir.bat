:: ./dirlist.bat name.txt D:\relex\ D:\nushens\
:: ./dirlist.bat name.txt D:\relex\ D:\PRVIT
CHCP 65001
@echo off
@echo name[%1] tardir[%2] srcdir[%3]


for /f %%n in (%1) do (

	echo  %%n
	
	md %2\%%n

	for /d %%i in ( %3\*%%n* ) do (
		
		@echo %%i 	
		@echo "move %%i\* => %2\%%n\" 
		
		move %%i\*  %2\%%n\
	)
)

