
 printf "enter folder name : "
 read dirname
 mkdir $dirname
 cd $dirname

echo 'Hello, world.' > $dirname

git add .

printf "enter commit message : "
git commit -m "$comment"
read commit
git push 

pause