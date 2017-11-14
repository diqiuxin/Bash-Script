# Bash Script rep

## 仓库存储信息
脚本数量：1

脚本名：demo.sh

## 脚本文件详细说明 

### demo.sh 

#### 脚本说明(Script explanation):
    
**1. 运行方式：**

    ```
    $sh demo.sh dirName path
    ```
      demo.sh  --脚本文件
      dirName  --需要创建的文件夹名称
      path     --指定创建文件夹的路径（相对路径与绝对路径都可以），默认路径是 ~/Desktop

**2. 运行成功提示：**'create dirName dir success :)'

**3. 报错提示:** 'dirName 文件夹已经存在' 
  
**4. 脚本功能：** 在桌面创建指定 dir ,并初始化一些文件内容
   
    dirName (文件结构)
      ├───css
      │    └───style.css
      ├───index.html
      └───js
           └───main.js
           
**5.文件内容：**

style.css
    
    h1{color: red;}
index.html

    <!DOCTYPE>
      <title>Hello</title>
    <h1>Hi</h1>
main.js

    var string = 'Hello World';alert(string);

#### 脚本高级用法：
  在 ~/.bashrc 中配置 export PATH="demo.sh所在文件夹的绝对路径:$PATH" 后可在命令行直接运行 
  ```
  $ demo.sh dirName path
  ```


>demo.sh写于：2017/11/14
  
