#执行成功返回 0  失败返回 1

if [ -d $1 ]; then                         #判断文件夹名 $1 是否存在
  echo "$1 文件夹已经存在"                  # $1 存在时，执行
  exit 1
else                                       # $1 不存在时，执行
  #cd ~/Desktop
  mkdir $1
  cd $1
  mkdir css js                             #以下为index.html、style.css、mian.js各文件内容
  echo "<!DOCTYPE>
<title>Hello</title>
<h1>Hi</h1>" > index.html
  echo "h1{color: red;}" > css/style.css
  echo "var string = 'Hello World';
alert(string);" > js/main.js
  echo "create $1 dir success :)"
  exit 0
fi