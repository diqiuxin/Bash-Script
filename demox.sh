#此脚本是在demo.sh上的一个补充版,所以在执行时需要依赖demo.sh脚本

pwd > path.txt                            #保存当前执行环境的路径到path.txt，为执行demo.sh提供条件
for path in $(cat path.txt)               #从保存的文件中取出字符串赋给变量path
do
   echo "当前执行环境路径：${path}"
done

if [ -z $1 ]; then                        #判断文件夹名 $1 是否为空
  echo '缺失文件夹名，请输入...'            # $1 为空时,执行
else                                      # $1 不为空时，执行

  if [ -z $2 ]; then                      #判断路径 $2 是否为空
    cd ~/Desktop                          # $2 为空时,执行
  else                                    # $2 不为空时,执行
    cd $2
  fi

  pwd > ${path}/path-1.txt                   #保存文件夹创建路径到 path-1.txt
  for path_1 in $(cat  ${path}/path-1.txt)   #从保存的文件中取出字符串赋给变量path_1
  do
    echo "$1 文件夹创建路径为: ${path_1}"
  done
  
  #echo ${path}  #调试
  sh ${path}/demo.sh $1                 #给demo-0.sh创造执行路径，并给传递参数$1(需要创建的文件夹名)

fi