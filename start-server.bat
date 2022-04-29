git pull || goto :gitError

goto :start

:start
TerrariaServer.exe -config serverconfig.txt

git add Worlds
git commit -m "Update world - $(date)"
git push

pause
exit 0

:gitError
echo "Error on pulling latest changes"
pause