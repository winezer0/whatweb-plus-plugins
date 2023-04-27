#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os
import sys
import time
import json
import argparse
import threading
from subprocess import Popen, STDOUT, PIPE
import struct, io, socket
import configparser

################################
base_dir = os.path.split(os.path.realpath(__file__))[0] #获取脚本文件所在路径
lib_novafinger = base_dir+ '/novafinger-lib' #存储novafinger所需要的基础库文件
if not os.path.exists(lib_novafinger):os.makedirs(lib_novafinger) 
db_file = lib_novafinger+'/ip2region.db'  #数据库文件路径

log_novafinger = base_dir+ '/novafinger-log' #存储novafinger运行时的日志缓存文件
if not os.path.exists(log_novafinger):os.makedirs(log_novafinger) 
################################
class Ip2Region(object):
    __INDEX_BLOCK_LENGTH  = 12
    __TOTAL_HEADER_LENGTH = 8192
    __f          = None
    __headerSip  = []
    __headerPtr  = []
    __headerLen  = 0
    __indexSPtr  = 0
    __indexLPtr  = 0
    __indexCount = 0
    __dbBinStr   = ''
    def __init__(self, dbfile):
        self.initDatabase(dbfile)
    def memorySearch(self, ip):
        """
        " memory search method
        " param: ip
        """
        if not ip.isdigit(): ip = self.ip2long(ip)
        if self.__dbBinStr == '':
            self.__dbBinStr   = self.__f.read() #read all the contents in file
            self.__indexSPtr  = self.getLong(self.__dbBinStr, 0)
            self.__indexLPtr  = self.getLong(self.__dbBinStr, 4)
            self.__indexCount = int((self.__indexLPtr - self.__indexSPtr)/self.__INDEX_BLOCK_LENGTH)+1
        l, h, dataPtr = (0, self.__indexCount, 0)
        while l <= h:
            m = int((l+h) >> 1)
            p = self.__indexSPtr + m*self.__INDEX_BLOCK_LENGTH
            sip = self.getLong(self.__dbBinStr, p)
            if ip < sip:
                h = m -1
            else:
                eip = self.getLong(self.__dbBinStr, p+4)
                if ip > eip:
                    l = m + 1;
                else:
                    dataPtr = self.getLong(self.__dbBinStr, p+8)
                    break
        if dataPtr == 0: raise Exception("Data pointer not found")
        return self.returnData(dataPtr)
    def binarySearch(self, ip):
        """
        " binary search method
        " param: ip
        """
        if not ip.isdigit(): ip = self.ip2long(ip)
        if self.__indexCount == 0:
            self.__f.seek(0)
            superBlock = self.__f.read(8)
            self.__indexSPtr = self.getLong(superBlock, 0)
            self.__indexLPtr = self.getLong(superBlock, 4)
            self.__indexCount = int((self.__indexLPtr - self.__indexSPtr) / self.__INDEX_BLOCK_LENGTH) + 1
        l, h, dataPtr = (0, self.__indexCount, 0)
        while l <= h:
            m = int((l+h) >> 1)
            p = m*self.__INDEX_BLOCK_LENGTH
            self.__f.seek(self.__indexSPtr+p)
            buffer = self.__f.read(self.__INDEX_BLOCK_LENGTH)
            sip = self.getLong(buffer, 0)
            if ip < sip:
                h = m - 1
            else:
                eip = self.getLong(buffer, 4)
                if ip > eip:
                    l = m + 1
                else:
                    dataPtr = self.getLong(buffer, 8)
                    break
        if dataPtr == 0: raise Exception("Data pointer not found")
        return self.returnData(dataPtr)
    def btreeSearch(self, ip):
        """
        " b-tree search method
        " param: ip
        """
        if not ip.isdigit(): ip = self.ip2long(ip)
        if len(self.__headerSip) < 1:
            headerLen = 0
            #pass the super block
            self.__f.seek(8)
            #read the header block
            b = self.__f.read(self.__TOTAL_HEADER_LENGTH)
            #parse the header block
            for i in range(0, len(b), 8):
                sip = self.getLong(b, i)
                ptr = self.getLong(b, i+4)
                if ptr == 0:
                    break
                self.__headerSip.append(sip)
                self.__headerPtr.append(ptr)
                headerLen += 1
            self.__headerLen = headerLen
        l, h, sptr, eptr = (0, self.__headerLen, 0, 0)
        while l <= h:
            m = int((l+h) >> 1)
            if ip == self.__headerSip[m]:
                if m > 0:
                    sptr = self.__headerPtr[m-1]
                    eptr = self.__headerPtr[m]
                else:
                    sptr = self.__headerPtr[m]
                    eptr = self.__headerPtr[m+1]
                break
            if ip < self.__headerSip[m]:
                if m == 0:
                    sptr = self.__headerPtr[m]
                    eptr = self.__headerPtr[m+1]
                    break
                elif ip > self.__headerSip[m-1]:
                    sptr = self.__headerPtr[m-1]
                    eptr = self.__headerPtr[m]
                    break
                h = m - 1
            else:
                if m == self.__headerLen - 1:
                    sptr = self.__headerPtr[m-1]
                    eptr = self.__headerPtr[m]
                    break
                elif ip <= self.__headerSip[m+1]:
                    sptr = self.__headerPtr[m]
                    eptr = self.__headerPtr[m+1]
                    break
                l = m + 1
        if sptr == 0: raise Exception("Index pointer not found")
        indexLen = eptr - sptr
        self.__f.seek(sptr)
        index = self.__f.read(indexLen + self.__INDEX_BLOCK_LENGTH)
        l, h, dataPrt = (0, int(indexLen/self.__INDEX_BLOCK_LENGTH), 0)
        while l <= h:
            m = int((l+h) >> 1)
            offset = int(m * self.__INDEX_BLOCK_LENGTH)
            sip = self.getLong(index, offset)
            if ip < sip:
                h = m - 1
            else:
                eip = self.getLong(index, offset+4)
                if ip > eip:
                    l = m + 1;
                else:
                    dataPrt = self.getLong(index, offset+8)
                    break
        if dataPrt == 0: raise Exception("Data pointer not found")
        return self.returnData(dataPrt)
    def initDatabase(self, dbfile):
        """
        " initialize the database for search
        " param: dbFile
        """
        try:
            self.__f = io.open(dbfile, "rb")
        except IOError as e:
            print("[Error]: %s" % e)
            sys.exit()
    def returnData(self, dataPtr):
        """
        " get ip data from db file by data start ptr
        " param: dsptr
        """
        dataLen = (dataPtr >> 24) & 0xFF
        dataPtr = dataPtr & 0x00FFFFFF
        self.__f.seek(dataPtr)
        data = self.__f.read(dataLen)
        return {
            "city_id": self.getLong(data, 0),
            "region" : data[4:]
        }
    def ip2long(self, ip):
        _ip = socket.inet_aton(ip)
        return struct.unpack("!L", _ip)[0]
    def isip(self, ip):
        p = ip.split(".")
        if len(p) != 4           : return False
        for pp in p:
            if not pp.isdigit()  : return False
            if len(pp) > 3       : return False
            if int(pp) > 255     : return False
        return True
    def getLong(self, b, offset):
        if len(b[offset:offset+4]) == 4:
            return struct.unpack('I', b[offset:offset+4])[0]
        return 0
    def close(self):
        if self.__f != None:
            self.__f.close()
        self.__dbBinStr  = None
        self.__headerPtr = None
        self.__headerSip = None
#################################


def get_IPLocate(input_ip):
    searcher = Ip2Region(db_file) #实例化
    ip = input_ip.strip()
    #判断是不是ip，isip这个函数是Ip2Region里写好的，直接用
    if searcher.isip(ip):
        #三种算法任选其一
        #data = searcher.btreeSearch(ip) #B树
        data = searcher.binarySearch(ip) #二进制
        #data = searcher.memorySearch(ip) #内存
        #print("%s|%s" % (ip, data["region"].decode('utf-8')))
        return data["region"].decode('utf-8')
    else:
        #print('%s|错误数据' %ip)
        return 'Error'
    searcher.close() #关闭
################################1
def json_handle(json_path="tmp.json" ):
    result_list = []
    with open(json_path, "r", encoding="utf8") as fileopen:
        json_str=fileopen.read()
        json_str = json_str.replace("null","None")  #NameError: name 'null' is not defined
        #print(json_str)
        json_list = eval(json_str) #数组格式的文本，仅支持一对[ ]
        #print(json_list) #一个数组,里面是字典
        #print(len(json_list))
    for (key_l1 , value_l1) in enumerate(json_list):
        #print(value_l1)
        result_line = []
        #print("json_list[{0}] = {1}".format(i,v))
        #print(type(v))
        #分析一共有多少一级键值对： 发现固定为4 dict_keys(['target', 'http_status', 'request_config', 'plugins'])
        #print(len(value_l1.keys()), value_l1.keys()) 
        
        #'http://console.oa.migu.cn'
        if value_l1.__contains__("target"):
            result_line.append(value_l1['target'].split("//",1)[-1].split("/",1)[0])  #取域名IP
            result_line.append(value_l1['target'])
        else:
            continue
        
        #307
        if value_l1.__contains__("http_status"):
            result_line.append(value_l1['http_status'])
        else:
            result_line.append('None_status')

    #    # {'headers': {'User-Agent': 'WhatWeb/0.5.4'}}
    #    if value_l1.__contains__("request_config"):
    #        result_line.append(str(value_l1['request_config']))
    #    else:
    #        result_line.append('None_request')
        
    #    # {'Country': {'string': ['CHINA'], 'module': ['CN']}, 'HTTPServer': {'string': ['Tengine/2.2.0']}, 'IP': {'string': ['117.185.122.250']}, 'RedirectLocation': {'string': ['http://console.oa.migu.cn']}, 'Tengine-Web-Server': {'version': ['2.2.0']}, 'UncommonHeaders': {'string': ['access-control-allow-origin']}}
    #    if value_l1.__contains__("plugins"):
    #        result_line.append(value_l1['plugins'])
    #    else:
    #        result_line.append('None_plugins')
        #分别追加plugins中的指定内容
        list_plugins = [ "IP","Title","Country","HTTPServer","RedirectLocation",
        "Access-Control-Allow-Methods","Cookies","HttpOnly" ,"nginx","UncommonHeaders" ,
        "CloudFlare","HTML5","Script","X-Frame-Options","X-UA-Compatible","Subdomains","Email" ]
        createVar = locals()
        if value_l1.__contains__("plugins"):
            #添加IP定位
            if value_l1["plugins"].__contains__("IP"):
                if value_l1["plugins"]["IP"].__contains__("string"):
                    ipadd =  value_l1["plugins"]["IP"]["string"][0]
                    #print(ipadd)
                    iplocate = get_IPLocate(ipadd)
                    #print(iplocate)
                    result_line.append(iplocate)
            else:
                #result_line.append("NA_iplocate"[:8])        #最多只取八位字符
                result_line.append("NA_iplocate")        #最多只取八位字符[:12]
                
            for plugin in list_plugins:
                if value_l1["plugins"].__contains__(plugin):
                    value_l3 = value_l1["plugins"][plugin]
                    #print(value_l3.values())
                    value_l4_all = ''
                    for  key_l4  in value_l3.keys():
                        value_l4_all = value_l4_all + '_'.join(str(i) for i in value_l3[key_l4])  + '_'
                    result_line.append(value_l4_all.strip('_'))
                else:
                    #result_line.append("NA_{}".format(plugin)[:8])    #最多只取八位字符
                    result_line.append("NA_{}".format(plugin))    #最多只取八位字符
                value_l1["plugins"].pop(plugin,"None")
            
            if len(value_l1["plugins"]) > 0 :
                value_l2 = value_l1["plugins"]
                result_line.append(str(value_l2))
            else:
                result_line.append("NA_Other")            
        else:
            for i in range(0,len(list_plugins)+1):
                result_line.append("None")
        #print(result_line)    
        result_list.append(result_line)
    return result_list
    
def json_to_csv( json_path,csv_path ):
    #print(csv_path , json_path )
    result_list = json_handle(json_path)
    with open(csv_path,'w+',encoding="utf8") as open_file:
        for result_line in result_list:
            line = ','.join("\""+str(i)+"\"" for i in result_line)
            open_file.write(line+'\n')
    
if __name__ == '__main__':
    print('''\033[1;34m 
Python Wrapper For Whatweb Enhanced 
WhatWeb _ Next generation web scanner version 0.5.5.12 And subsequent versions  supported.

Version: 0.1
Date: 2021.08.18
Author: WINEZER0
WXOfficial: NOVASEC
GitHub:  https://github.com/WINEZER0
Note: This tool requires Whatweb plus to be installed first
\033[0m''')

    parser = argparse.ArgumentParser()
    parser.add_argument( 'url' , nargs='?' ,help='Enter URLs, hostnames, IP addresses, filenames or IP ranges in CIDR, x.x.x-x, or x.x.x.x-x.x.x.x format.')
    parser.add_argument( '-i', '--input-file',   dest='input_file',help='Read targets from a file. You can pipe hostnames or URLs directly.')
    parser.add_argument( '-a','--aggression',dest='aggression',  help="""The aggression level controls the trade-off between speed/stealth and reliability.                        Set the aggression level. Default: 1.                        1. Stealthy            Makes one HTTP request per target and also follows redirects.                        3. Aggressive            If a level 1 plugin is matched, additional requests will be made.                        4. Heavy            Makes a lot of HTTP requests per target. URLs from all plugins are attempted. """)
    parser.add_argument( '-p', '--plugins' ,dest='plugins',  help='Select plugins. LIST is a comma delimited set. of selected plugins. Default is all. Each element can be a directory, file or plugin name and can optionally have a modifier, +/-. Examples: +/tmp/moo.rb,+/tmp/foo.rb title,md5,+./plugins-disabled/ ./plugins-disabled,-md5 -p + is a shortcut for -p +plugins-disabled.')

    parser.add_argument( '-l',   '-lp','--list-plugins',  dest='list_plugins',help='List all plugins.', action='store_true')
    parser.add_argument( '-I',   '-ip','--info-plugins',  dest='info_plugins',help='List all plugins with detailed information. Optionally search with keywords in a comma delimited list.')
    parser.add_argument( '-g',  '-gp', '--grep' , dest='grep', help='Search for STRING or a Regular Expression. Shows. only the results that match. Examples: --grep "hello" --grep "/he[l]*o/"')
    parser.add_argument( '-sp','--search-plugins' , dest='search_plugins', help='Search plugins for a keyword. ')
    parser.add_argument( '-cp', '--custom-plugin' ,  dest='custom_plugin',help="""Define a custom plugin named Custom-Plugin, .                            Examples:                        ":text=>"powered by abc""                            ":version=>/powered[ ]?by ab[0-9]/"                             ":ghdb=>"intitle:abc \"powered by abc\"                            ":md5=>"8666257030b94d3bdb46e05945f60b42"                            "{:text=>"powered by abc"}" """)
    parser.add_argument( '-dp','--dorks',  dest='dorks',help='List Google dorks for the selected plugin.' )#option `--dorks' requires an argument

    parser.add_argument( '-pre','--url-prefix', dest='url_prefix', help='Add a prefix to target URLs.')
    parser.add_argument( '-suf','--url-suffix', dest='url_suffix', help='Add a suffix to target URLs.')
    parser.add_argument( '-pat','--url-pattern',dest='url_pattern',  help="""Insert the targets into a URL. e.g. example.com/%%insert%%/robots.txt""")
    
    parser.add_argument( '-U', '-ua', '--user-agent', dest='user_agent', help='Identify as AGENT . The enhanced version will update automatically.')
    parser.add_argument( '-H', '-he', '--header', dest='header', help='Add an HTTP header. eg "Foo:Bar". Specifying a default header will replace it. Specifying an empty value, e.g. "User-Agent:" will remove it.')
    parser.add_argument( '-u','-us','--user' ,dest='user',  help='HTTP basic authentication. --user=<user:password>.')
    parser.add_argument( '-c','-ck', '--cookie',dest='cookie',  help='Use cookies, e.g. "name=value; name2=value2". ')
    parser.add_argument( '-cj','-ckj', '--cookie-jar' ,dest='cookie_jar',  help='Read cookies from a file. ')

    parser.add_argument( '-fr','--follow-redirect', dest='follow_redirect', help='Control when to follow redirects. WHEN may be "never", "http-only", "meta-only", "same-site" or "always". Default: always .')
    parser.add_argument( '-mr','--max-redirects',dest='max_redirects',  help='Maximum number of redirects. Default: 10.')
    parser.add_argument( '-P','--proxy' ,dest='proxy',  help='<hostname[:port]> Set proxy hostname and port. Default: 8080.')
    parser.add_argument( '-PU','--proxy-user' ,dest='proxy_user',  help='<username:password> Set proxy user and password. ')
    
    
    parser.add_argument(  '-ob','--log-brief' ,dest='log_brief',  help='Suppress error messages.')
    parser.add_argument(  '-ov', '--log-verbose' ,dest='log_verbose',  help='Log verbose output.')
    parser.add_argument(  '-oe','--log-errors', dest='log_errors', help='Log errors.')
    parser.add_argument(  '-ox', '--log-xml' , dest='log_xml', help='Log XML format.')
    parser.add_argument(  '-oj','--log-json' , dest='log_json', help='Log JSON format.')
    parser.add_argument(  '-oc', '--log-csv' ,dest='log_csv',  help='Log CSV format.')
    parser.add_argument(  '-os','--log-sql',  dest='log_sql',help='Log SQL INSERT statements.')
    parser.add_argument(  '-osc', '--log-sql-create' ,dest='log_sql_create',  help='Create SQL database tables.')
    parser.add_argument(  '-ojv','--log-json-verbose' , dest='log_json_verbose', help='Log JSON Verbose format.')
    parser.add_argument(  '-om', '--log-magictree' ,  dest='log_magictree',help='Log MagicTree XML format.')
    parser.add_argument(  '-oo','--log-object' ,dest='log_object',  help='Log Ruby object inspection format.')
    parser.add_argument(  '-omd', '--log-mongo-database' , dest='log_mongo_database', help='Name of the MongoDB database.')
    parser.add_argument(  '-omc','--log-mongo-collection' , dest='log_mongo_collection', help='Name of the MongoDB collection.Default: whatweb.')
    parser.add_argument(  '-omh','--log-mongo-host' ,  dest='log_mongo_host',help='MongoDB hostname or IP address.Default: 0.0.0.0.')
    parser.add_argument(  '-omu', '--log-mongo-username', dest='log_mongo_username',help='MongoDB username. Default: nil.')
    parser.add_argument(  '-omp','-omp','--log-mongo-password',   dest='log_mongo_password', help='MongoDB password. Default: nil.')
    parser.add_argument(  '-oei','--log-elastic-index', dest='log_elastic_index', help='Name of the index to store results. Default: whatweb')
    parser.add_argument(  '-oeh','--log-elastic-host',dest='log_elastic_host',  help='Host:port of the elastic http interface. Default: 127.0.0.1:9200')

    parser.add_argument(  '-t', '-mt','--max-threads' ,dest='max_threads',  help='Number of simultaneous threads. Default: 25.')
    parser.add_argument(  '-ot','--open-timeout' ,dest='open_timeout',  help='Time in seconds. Default: 15.')
    parser.add_argument(  '-rt','--read-timeout', dest='read_timeout', help='Time in seconds. Default: 30.')
    parser.add_argument(  '--wait' , dest='wait', help='Wait SECONDS between connections.    This is useful when using a single thread.')

    parser.add_argument( '-v','-vb', '--verbose', dest='verbose', help='Verbose output includes plugin descriptions. Use twice for debugging. ', action='store_true')
    parser.add_argument( '-V' ,'-vs' ,'--version' ,dest='version',  help='Display version information.' , action='store_true')

    parser.add_argument( '-X', '--no-max-match' , dest='no_max_match', help='New features, Shut down Ignore matching :url require, Default True.' , action='store_true')
    parser.add_argument( '-Y', '--no-min-urls' , dest='no_min_urls', help='New features, Shut down Minimize Access the  plugins :urls , Default True.' , action='store_true')
    parser.add_argument( '-Z', '--no-base-path' , dest='no_base_path', help='New features, Shut down Add  finger paths IN $BASEPATH Like /favicon.ico,/robots.txt, Default True.' , action='store_true')

    parser.add_argument( '-cl','--color' , dest='color', help='control whether colour is used. WHEN may be    "never", "always", or "auto".' , action='store_true')
    parser.add_argument( '-qe', '--quiet' ,dest='quiet',  help='Do not display brief logging to STDOUT.' , action='store_true')
    parser.add_argument( '-ne', '--no-errors' , dest='no_errors', help='Log brief, one-line output.' , action='store_true')
    parser.add_argument( '-db' ,'--debug' , dest='debug', help='Raise errors in plugins.' , action='store_true')
    parser.add_argument( '-sh','--short-help',  dest='short_help', help='Short usage help.'  , action='store_true')
    parser.add_argument( '-wh','--whatweb-help' ,  dest='whatweb_help', help='Complete usage help.'  , action='store_true')
    
    args = parser.parse_args()
    #print("args",(vars(args)))

    if not args.url and not args.input_file and not args.short_help and not args.whatweb_help:
        print('\033[1;31m[-] 未指定要访问的 URL 或者 URL 列表，帮助信息如下：\n\033[0m')
        parser.print_help()
        sys.exit()
        
    whatweb_cmd = "whatweb"
    whatweb_options = ""
    conf= configparser.ConfigParser()
    conf.read(lib_novafinger + '/novafinger.conf')  # novafinger.conf文件路径,从中提取whatweb运行参数
    if conf.get("whatweb", "whatweb_cmd")!=None and conf.get("whatweb", "whatweb_cmd")!="": 
        whatweb_cmd = conf.get("whatweb", "whatweb_cmd")  # 获取指定section 的option值
    if conf.get("whatweb", "whatweb_options")!=None and conf.get("whatweb", "whatweb_options") !="None": 
        whatweb_options = conf.get("whatweb", "whatweb_options")  # 获取指定section 的option值
    options = vars(args) #命名空间转字典
    csv_json = csv_path=""
    for option,value in options.items():
        #print(option,value) #查看参数情况
        if value != None and value !=False:
            if value ==True:
                #处理Bool参数
                if "whatweb_help" == option:
                    #不需要添加whatweb_前缀的
                    whatweb_options += " --{}".format("help")
                else:
                    whatweb_options += " --{}".format(option.replace("_","-"))
            else:
                if "log_csv" == option:
                    csv_path = value
                    #自定义的输出方式,需要试用whatweb生成json再转换为csv格式 
                    csv_json= log_novafinger +'/csv_tmp.json'
                    if os.path.exists(csv_json) : os.remove(csv_json) #删除临时json文件
                    whatweb_options += " --{}={}".format("log-json", csv_json)
                elif "url"== option:
                    #不需要添加--url=前缀的
                    whatweb_options += " {}".format(value)
                else:
                    whatweb_options += " --{}={}".format(option.replace("_","-") ,value)
    #执行命令并保存文件
    try:
        command = whatweb_cmd+whatweb_options
        print("\033[1;32mcommand:{}\033[0m\n".format(command))
        p = Popen(command, shell=True, stderr=STDOUT) # stdout=PIPE, 
        output, err = p.communicate()
        #判断json文件是否存在,存在就进行格式转换
        if csv_path !="" and os.path.exists(csv_json) :
            json_to_csv(csv_json,csv_path)
    except KeyboardInterrupt:
        print("User aborted.")
        exit(0)
    except Exception as e:
        print(e)
