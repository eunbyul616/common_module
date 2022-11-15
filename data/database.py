import pymysql
import pandas as pd


class Database:
    def __init__(self,
                 host: str,
                 database: str,
                 port: str,
                 user: str,
                 password: str):
        self.host = host
        self.database = database
        self.port = port
        self.user = user
        self.password = password

    def load_data(self,
                  query: str) -> pd.DataFrame:
        conn = psycopg2.connect(host=self.host,
                                database=self.database,
                                port=self.port,
                                user=self.user,
                                password=self.password)
        data = psql.read_sql(query, conn)
        conn.close()

        return data

    def insert_data(self,
                    query: str,
                    data: pd.DataFrame):
        conn = psycopg2.connect(host=self.host,
                                database=self.database,
                                port=self.port,
                                user=self.user,
                                password=self.password)
        result = data.to_dict('records')
        cursor = conn.cursor()
        cursor.executemany(query, result)
        conn.commit()
        conn.close()
