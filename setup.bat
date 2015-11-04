::call bower install bootstrap-sass --save

call move "files\*"
::call move "files\package.json"
::call move "files\bower.json"
::call move "files\config.json"
::call move "files\index.html"
::call move "files\app.scss" "scss\app.scss"
::call move "files\sample.js" "scripts\sample.js"

call npm install grunt
call npm install matchdep --save-dev
call npm install grunt-contrib-copy --save-dev
call npm install grunt-contrib-uglify --save-dev
call npm install grunt-contrib-watch --save-dev
call npm install grunt-open --save-dev
call npm install grunt-express --save-dev
call npm install grunt-rev --save-dev
call npm install grunt-parallel --save-dev
call npm install grunt-sass --save-dev

start cmd.exe /k "grunt"

call del /S /F "files\*"
call del /Q /F "setup.bat"
call rmdir "files"

::/k "cd %~dp0 grunt"