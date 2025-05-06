# whatweb-plus-plugins

whatweb-plus-plus 是 whatweb-plus 的插件存储库 

主体程序:
https://github.com/winezer0/whatweb-plus

插件存储:
https://github.com/winezer0/whatweb-plus-plugins

原始项目:
https://github.com/urbanadventurer/WhatWeb


## 插件部署方案

### 直接部署
```
直接下载解压项目,并存放在whatweb.exe 或 whatweb.rb同级目录.

建议使用git clone --depth=1 克隆, 便于更新指纹：

git clone --depth=1  https://github.com/winezer0/whatweb-plus-plugins
```

### 变量部署 
```
1.克隆项目
git clone --depth=1  https://github.com/winezer0/whatweb-plus-plugins

2.设置环境变量
Linux:
    echo 'export WHATWEB_ROOT=/path/to/whatweb-plus-plugins' >> ~/.bashrc 
    source ~/.bashrc

Windows:
    setEnv是一个 Windows 环境变量设置工具:
    https://github.com/winezer0/setEnv-Windows
    
    setEnv -s WHATWEB_ROOT /path/to/whatweb-plus-plugins
    
    PS: Windows 可以通过 UI 进行环境变量配置
```


## 其他文件说明

```
plugin-development
plugins-disabled
test

都是原版 whatweb 项目下的一些测试脚本,部分已经无法运行.
```

## Novafinger介绍
```
Whatweb 的 python3 命令行封装脚本

添加输出格式 --log-csv,用于生成 json 并导出为 csv 格式。

除使用 -wh 用于调用 whatweb 默认的 -h 外，复用 whatweb 所有原生参数
```