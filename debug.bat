cd plugin
call mvn clean package || goto :end
cd ..
copy .\plugin\target\*.jar .\server\plugins
call .\server\start.bat
:end