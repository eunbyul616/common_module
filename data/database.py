import pymysql
import pandas as pd


class Database:
    def __init__(self, host, database, port, user, password):

        self.host = host
        self.database = database
        self.port = port
        self.user = user
        self.password = password

    def load_data(self, query):
        conn = pymysql.connect(host=self.host,
                               db=self.database,
                               port=self.port,
                               user=self.user,
                               passwd=self.password)
        data = pd.read_sql(query, conn)
        return data

    def insert_data(self):
        pass