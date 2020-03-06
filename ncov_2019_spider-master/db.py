"""
@ProjectName: DXY-2019-nCov-Crawler
@FileName: db.py
@Author: Jiabao Lin
@Date: 2020/1/21
"""
from pymongo import MongoClient


# client = MongoClient('127.0.0.1',27017)
client = MongoClient('1.1.1.7',27017)
db = client['ncov']


class DB:
    def __init__(self):
        self.db = db

    def insert(self, collection, data):
        self.db[collection].insert(data)

    def find_one(self, collection, data=None):
        return self.db[collection].find_one(data)

    def update(self,collection,myquery,newvalues):
        self.db[collection].update_one(myquery,newvalues)


if __name__ == '__main__':
    crawler = DB()
    crawler.update('DXYNews',)