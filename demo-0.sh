if [ -d $1 ]; then
  echo "$1 文件夹已经存在"
  exit 1
else
  #cd ~/Desktop
  mkdir $1
  cd $1
  mkdir css js
  #touch index.html css/style.css js/main.js
  echo "<!DOCTYPE>
  <title>Hello</title>
  <h1>Hi</h1>" > index.html
  echo "h1{color: red;}" > css/style.css
  echo "var string = 'Hello World';
  alert(string);" > js/main.js
  echo 'create $1 dir success :)'
  exit 0
fi