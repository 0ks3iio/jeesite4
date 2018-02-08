@echo off
rem /**
rem  * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
echo.
echo [��Ϣ] ʹ�� Spring Boot Tomcat ���� Web ���̡�
echo.
rem pause
rem echo.

%~d0
cd %~dp0

cd ../
title %cd%

set currPath=%cd%

rem set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m
set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

if exist "../package/pom.xml" (
	cd ../package
	call mvn clean install -Dmaven.test.skip=true -Ppackage -U
)

cd %currPath%

call mvn clean spring-boot:run -U

pause