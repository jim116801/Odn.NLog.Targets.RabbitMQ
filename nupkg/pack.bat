del *.nupkg
"..\src\.nuget\NuGet.exe" "pack" "..\src\NLog.Targets.RabbitMQ\NLog.Targets.RabbitMQ.csproj" -Properties Configuration=Release -IncludeReferencedProjects -Symbols
pause
for /f %%i in ('dir *.nupkg /b') do nuget.exe push %%i -s http://nuget.ymc.int/ yaomaiche.com