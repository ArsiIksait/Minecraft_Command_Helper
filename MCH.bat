@echo off&title Minecraft Command Helper v1.0.0
call :COText ��ӭʹ��Minecraft������ͳ���!����help���鿴ʹ�ð��� 27
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
 call :COText Minecarft������ͳ������ҳ 0a
 echo:
 echo:----------------------------------------
 echo:����		����		����
 echo:cls		NOPE		����
 echo:exit		NOPE		�˳�Minecarft������ͳ���
 echo:help		[Ҫ��ѯ������]		��ʾMinecarft������ͳ���İ���ҳ������ʾĳ��Minecraft����İ���
 ) else (
 if "%2"=="/tp" (
  call :COText TP�����﷨�� 0a
  echo:
  echo:/TP [Ŀ��ѡ����] [Ŀ��ѡ����]
  echo:ʾ��:
  echo:/TP 213 241 42 		 ���͵���������Ϊ213 241 42�ķ�����
  echo:/TP ArsiIksait 		 ���͵����ArsiIksait��λ��
  echo:/TP ArsiIksait Alex 		�����ArsiIksait���͵����Alex��λ��
  echo:/TP @e[type=pig] ArsiIksait 		������������ʵ��������pig^(��^)������ȫ�����͵�ArsiIksait���
  )
   if "%2"=="/say" (
  call :COText SAY�����﷨�� 0a
  echo:
  echo:/SAY [Ŀ��ѡ����] [�ı�]
  echo:ʾ��:
  echo:/SAY Hello World! 		 ���һ��Hello World!
  echo:/SAY ArsiIksait Hello World! 		 ֻ�����ArsiIksait���һ��Hello World!
  )
 )
)
exit /b
:COText
set /p =     <nul > "%1.fst"
findstr /a:%2 .* "%1*.fst"&del "%1.fst"
exit /b