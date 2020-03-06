 ncov_2019_spider
-----
2019 ��״�����������档�������ݿ��ӻ���

![](https://img.shields.io/badge/Python-v3.7-brightgreen)
![](https://img.shields.io/badge/Mongo-v4.0-brightgreen)
![](https://img.shields.io/badge/Mysql-v5.7-brightgreen)
![](https://img.shields.io/badge/platform-windows%20%7C%20macos%20%7C%20linux-brightgreen)
![](https://img.shields.io/github/license/junguoguo/ncov_2019_spider)
![](https://img.shields.io/github/issues/junguoguo/ncov_2019_spider)
![](https://img.shields.io/badge/WeChat-ajun--guo-brightgreen?logo=wechat)	


## ��Ŀ����
�������ݷ���

## ������Դ
����ҽ����
��1.24�ſ�ʼ�ɼ���⣬������24������ģ�ȫ��ȫ��ʡ�������м����������ݡ�

## ����չʾ
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/WeChat%20Image_20200131111804.jpg )  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/WeChat%20Image_20200131111836.png )  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/WeChat%20Image_20200131111846.png)  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/WeChat%20Image_20200131111920.png )  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/2.jpg)  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/3.jpg)  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/4.jpg)  
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/5.jpg)  



## ����ջ
1. mongodb ���ڴ洢�ɼ�����
2. mysql 5.7 ���ڴ洢��mogodb�ɼ�������
3. python 3.7 �ɼ����ݺ�ת��mongodb���ݵ�mysql
4. ������win10 �� macOS �²���ͨ����

## ���̽ṹ

```
|-- LICENSE
|-- README.md
|-- data -----------------------------�����������
|-- image  
|-- logs
|-- main.py  --------------------------��������ļ�
|-- requirements.txt
|-- service  --------------------------����
|-- spider.py -------------------------����ת���ļ�
|-- startup.sh linux ------------------������Ŀ�ű�
|-- tree.txt
|-- util
`-- ҵ��.sql----------------------------���ݿ��ѯʵ��
```

## FAQ
1. ΪʲôҪ��2�����ݿ�  
һ�����û���֪��ʹ��nosql�����������Լ�����һЩ��ѯ��ʱ����sql����˳�֡� 
����WeChat  :  ajun-guo


----

## ��װ�Ͳ���
 
#### mongodb ���ڲɼ������ݿ����
��װ����for mac :https://www.runoob.com/mongodb/mongodb-osx-install.html  
����mongo ������   
mongod --dbpath d:/workspace/mongodb  
export PATH=/usr/local/mongodb/bin:$PATH && sudo mongod  

#### mysql server��װ

##### ж��mysql(�Ǳ�Ҫ����)
```bash
sudo rm /usr/local/mysql
sudo rm -rf /usr/local/mysql*
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*
rm -rf ~/Library/PreferencePanes/My*
sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*
sudo rm -rf /var/db/receipts/com.mysql.*
networksetup -setairportpower en0 off && networksetup -setairportpower en0 on

���� �� http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.10-osx10.9-x86_64.dmg
��װ������https://www.cnblogs.com/kimbo/p/8724595.html
root@localhost: 4O=ucCLx9y%3
/usr/local/mysql-5.7.10-osx10.9-x86_64/bin
```



##### ����mysql����(�Ǳ�Ҫ����)
```
1. �ر�mysql����
sudo /usr/local/mysql/support-files/mysql.server stop ����ϵͳƫ�����и� MySQL ��ر�
2.����mysqlĿ¼��
/usr/local/mysql-5.7.10-osx10.9-x86_64/bin
3.�õ�Ȩ��
sudo su
4.����mysql����
./mysqld_safe --skip-grant-tables &? ������ϵͳ����п���
5.�ؿ��ն�
mysql -uroot -p ����ʾ��������ʱ������뼴��
6. �õ�Ȩ�ޣ������޸����룩
flush privileges;
7.�޸�����
set password for 'root'@'localhost'=password('root');
set password for 'root'@'localhost'=password('root');
```
 
#### ��װnavicat for mysql
���ص�ַ��http://www.pc6.com/mac/111878.html  
���նˣ����룺sudo spctl --master-disable �س�����ƫ�����õİ�ȫ������˽�������κ���Դ�����´�Navicat for MySQL��OK��



#### ��װpython������
python3 -m pip install -r requirements.txt



### ����˵��
crawler.py ����������������ļ�  
python crawler.py   
�����󣬾ͻ�ѭ���������ȡ����������⵽mongo  

spider.py ��mongo 2 mysql ������ת����  
��Ҫ�Ƿ������ʹ��sql �����ݲ�ѯ���о��� 
Ҳ��Ҫ����������ʵʱת�����ݵ�mysql  
python spider.py  

���ݿ����ƣ�ncov  
��ѯʵ������ҵ��.sql  

�� ��  
1. dxyarea  ʡ������
2. dxyarea_city ���м����� 
3. dxyoverall �������ݸ��� 
![](https://github.com/junguoguo/ncov_2019_spider/raw/master/image/1.jpg )


----
### ��������
1. �������ݿ�
export PATH=/usr/local/mongodb/bin:$PATH && sudo mongod
2. ��������ת����mongo 2 mysql��
cd /Users/HE/Desktop/ncov_spider/ && python3  spider.py
3. �������棨ÿ�춼Ҫ���������������ػ��ͻ�һֱ��ÿ���Զ���
cd /Users/HE/Desktop/ncov_spider/ && python3  main.py 

����3�����������һ���µ��ն�ִ�С�