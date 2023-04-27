## Novafinger介绍

0、Novafinger.py是Whatweb的python3命令行封装脚本

1、添加输出格式--log-csv,用于生成json并导出为csv格式。

2、除使用-wh用于调用whatweb默认的-h外，复用whatweb所有原生参数,

## 使用注意事项

请先修改 novafinger-lib 目录下wrapper.conf配置文件, 配置whatweb的调用方式和默认调用命令

## 配置文件示例

如whatweb可通过命令行直接调用:

```
whatweb_cmd = whatweb
或
whatweb_cmd = None
```

如whatweb需要通过whatweb.exe直接调用:

```
whatweb_cmd = whatweb.exe
PS:可设置为绝对路径
whatweb_cmd =  ruby /xxxpath/whatweb.exe
```

如whatweb需要通过ruby调用:

```
whatweb_cmd =  ruby whatweb
PS:可设置为绝对路径
whatweb_cmd =  ruby /xxxpath/whatweb
```









