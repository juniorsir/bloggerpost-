#!/data/data/com.termux/files/usr/bin/bash



pkg install python


pip install flast



wget https://raw.githubusercontent.com/juniorsir/bloggerpost-/main/app.py
wget https://raw.githubusercontent.com/juniorsir/bloggerpost-/main/preview.html
wget https://raw.githubusercontent.com/juniorsir/bloggerpost-/main/form.html



mkdir bloggerpost
mkdir bloggerpost/tamplates
mv app.py bloggerpost
mv form.html bloggerpost/templates
mv preview.html bloggerpost/templates
cd ~bloggerpost
clear

