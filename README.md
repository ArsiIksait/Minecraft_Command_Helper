# Minecraft_Command_Helper
我的世界命令帮助器CMD版

如果要增加一个对Minecraft命令的解释，请在
if "%1"=="help" (
 ...
)
内添加：
   if "%2"=="/[XXX]" (
  call :COText [XXX]命令语法： 0a
  echo:在这里写该命令的语法
  echo:示例:
  echo:在这里写介绍，一行一个echo:
  )
