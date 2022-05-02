# linux git 使用手册
## 使用配置
1. 第一次使用需要配置用户名和邮箱，使用的命令如下
```git
git config --global user.name "wuchuankang"
git config --global user.email "1650912111@qq.com"
```

2. 将本地的仓库推送到远程github上
          1) 先在github上新建仓库，假定新建的仓库名称为repo;
          2) 在本地的仓库中添加远程仓库
          ```git
          git remote add origin git@github.com:wuchuankang/repo
          ```
        3)  在推送和下拉github上的库时，github不再使用 密码进行认证，而是使用token，当前token是：
        ```git
        xxx
        ```
        通过以下方式进行添加认证，则后面无需再填写用户名和密码了
        ```git
        git remote set-url origin https://xxx@github.com/wuchuankang/repo.git
        ```  
        github生成新的token的方式：在github账户图标左击选中Settings->Developer settings->personal access tokens 生成即可。
        4) 查看当前仓库添加的远程仓库  
        ```
        git remote -v
        ```
        5) 删除远程仓库
                ```
               git  remote  rm origin
                ```
        6) 推送到远程仓库
        ```
        git push -u origin master
        ```
        7)  将已建立连接的远程仓库下拉，使用：
        ```
        git pull
        ```
        8) 主分支master是软件开发的主线，为了避免在上面改动而改乱了，使用分支branch，在分支上更改，更改好后在合并到主分支上。
        ```
        git branch x            //  新建分支x的命令
        git checkout x          //切换到x分支上
       git branch       // 查看分支
        ```
        9) 将分支x合并到master分支上
        ```
       git checkout master      // 先切换到主分支上
       git merge x      // 合并x分支到master分支上
        ```
        10) .gitignore 文件可以忽略不想让上传的文件，其中 **/** 表示项目的根目录， **#** 开头的，git会忽略，相当于注释；
        11) .gitignore文件 在使用git add . 的时候，会将所有在工作区的文件都提交到临时存储区，但是有些文件不必要提交，比如(假如有)本地的配置文件等，或者就是自己不想提交到github上的文件，想要忽略掉这些文件，git仓库提供了一个途径，就是在仓库中建立一个 .gitignore 文件，将不想add 的文件的名字都填进去，就可以了。有些时候，我们已经把文件提交到临时存储区，或者commit到仓库区，那么就是想将该文件不加入仓库，或者说是不追踪，直接在.gitignore加入该文件名是不够的，因为一旦add后，就会在临时存储区留下cache，以后还会追踪，必须将cache删除后，才可以：
        ```
        git rm -f --cached xxx
        ```  
        这里的删除仅仅是在临时存放区或者仓库区中一种逻辑删除，还是在这个文件中的
