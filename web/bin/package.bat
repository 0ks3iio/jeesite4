@echo off
rem /**
rem  * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
echo.
echo [��Ϣ] ���Web���̣�����war���ļ���
echo.
pause
echo.

%~d0
cd %~dp0

cd ../
call mvn clean package -Dmaven.test.skip=true -Ppackage -U

pause