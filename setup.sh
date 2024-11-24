#!/data/data/com.termux/files/usr/bin/bash

echo"Python is InSTallinG"

pkg install python

echo"flask Is iNstaLLing"
pip install flast

echo"Coping nacessary file"

wget https://github.com/juniorsir/bloggerpost-/blob/main/preview.html
wget https://github.com/juniorsir/bloggerpost-/blob/main/form.html
wget https://github.com/juniorsir/bloggerpost-/blob/main/app.py

echo"Setup in Progress"

mkdir bloggerpost
mkdir bloggerpost/tamplates
mv app.py bloggerpost
mv form.html bloggerpost/templates
mv preview.html bloggerpost/templates
cd bloggerpost
clear
echo"Now You can use python app.py to launch web server"
