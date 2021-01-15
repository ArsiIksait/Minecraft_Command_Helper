@echo off&title Minecraft Command Helper v1.0.0
call :COText 欢迎使用Minecraft命令解释程序!输入help来查看使用帮助 27
echo:
:loop
set /p shell=^>^>
call :CommandLen %shell%
goto :loop
:CommandLen
if "%1"=="cls" (cls)
if "%1"=="exit" (exit)
if "%1"=="help" (
 if "%2"=="" (
 call :COText Minecarft命令解释程序帮助页 0a
 echo:
 echo:----------------------------------------
 echo:命令		参数		作用
 echo:cls		NOPE		清屏
 echo:exit		NOPE		退出Minecarft命令解释程序
 echo:help		[要查询的命令]		显示Minecarft命令解释程序的帮助页或者显示某个Minecraft命令的帮助
 ) else (
 if "%2"=="/tp" (
  call :COText TP命令语法： 0a
  echo:
  echo:/TP [目标选择器] [目标选择器]
  echo:示例:
  echo:/TP 213 241 42 		 传送到世界坐标为213 241 42的方块上
  echo:/TP ArsiIksait 		 传送到玩家ArsiIksait的位置
  echo:/TP ArsiIksait Alex 		将玩家ArsiIksait传送到玩家Alex的位置
  echo:/TP @e[type=pig] ArsiIksait 		将世界中所有实体类型是pig^(猪^)的生物全部传送到ArsiIksait身边
  )
   if "%2"=="/say" (
  call :COText SAY命令语法： 0a
  echo:
  echo:/SAY [目标选择器] [文本]
  echo:示例:
  echo:/SAY Hello World! 		 输出一个Hello World!
  echo:/SAY ArsiIksait Hello World! 		 只对玩家ArsiIksait输出一个Hello World!
  )
 )
)
exit /b
:COText
set /p =     <nul > "%1.fst"
findstr /a:%2 .* "%1*.fst"&del "%1.fst"
exit /b