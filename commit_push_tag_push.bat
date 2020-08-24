for /f "tokens=* usebackq" %%s in (`gnu_date +%%Y%%m%%d-%%H%%M%%S`) do (set tag_name=%%s)
echo %tag_name%

set cfg_directory=c:\iqx\cfg\

echo Committing changes
call git add .
call git commit -m "Genned %tag_name%"

echo Tagging commit
call git tag "%tag_name%"
call git push --tags
