#!/bin/bash

# 生成静态文件
pelican content

# 切换到 output 目录
cd output

# 初始化 Git 仓库（如果还没有）
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Update site"

# 推送到 GitHub Pages
git push -f https://github.com/xttgithub/xttgithub.github.io.git master:gh-pages

# 返回项目根目录
cd ..
