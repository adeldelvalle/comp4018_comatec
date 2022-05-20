import pymysql
import configparser


class DatabaseConnection:
    def __init__(self):
        self.config = configparser.ConfigParser()
        self.config.read('credentials.cfg')
        self.user = self.config.get('MYSQL', 'user')
        self.database = self.config.get('MYSQL', 'database')
        self.password = self.config.get('MYSQL', 'password')
        self.host = self.config.get('MYSQL', 'host')
        self.conn = pymysql.connect(user=self.user,
                                    password=self.password,
                                    host=self.host,
                                    database=self.database,
                                    port=3306,
                                    ssl={"fake_flag_to_enable_tls": True})
        self.cursor = self.conn.cursor()

    def insert_data(self, query, row):
        self.cursor.execute(query, row)

    def extract_data(self, query):
        return self.cursor.execute(query)
