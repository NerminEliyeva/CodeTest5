
#  printf "enter folder name : "
#  read dirname
#  mkdir $dirname
#  cd $dirname

# git add .

# # printf "enter commit message : "
# # git commit -m "$comment"
# git commit -m "sh test commit"
# # read commit
# git push 

# pause

# Folder name daxil et
printf "File name daxil edin: "
read filename

# ad soyad daxil et
printf "Adinizi daxil edin: "
read firstname

printf "Soyadinizi daxil edin: "
read lastname

# ad soyadi foldere yazdir
echo "İsim: $firstname" > "$filename"
echo "Soyisim: $lastname" >> "$filename"

# tesdiq mesaji goster
printf "'$filename' fayli hazirdir."

# commit mesaji daxil et
printf "Commit mesaji daxil edin: "
read commitmessage

git add "$filename"
git commit -m "$commitmessage"
git push origin main

pause