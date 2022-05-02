# vscode 使用手册
## 插件和配置
1. 安装插件：**neovim**，该插件能够将neovim的配置 ~/config/nvim/init.vim 直接使用；
2. 原来已将caps键和esc键相互映射过了，但是在vscode中仍然无法使用，这里主要是因为vscode中已经设置过了，在vscode的设置里搜索关键词:keyboard.dispatch，把两个选项中选择另一个就可以了。
3. vscode的设置使用json文件来实现的，在里面可以对插件进行设置，其中对neovim插件的设置可以参考自己的设定。
4. vscode的终端的控制台的字体间隔变大，可以在设置的搜索栏中搜索：Terminal.integrated.fontFamily，如果默认配置是空的话，就修改为：consolas字体或者monospace字体即可。