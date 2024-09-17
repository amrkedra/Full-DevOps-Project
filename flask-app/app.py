from dotenv import load_dotenv
import os
import mysql.connector
from flask import Flask

load_dotenv()

DB_HOST = os.getenv('MYSQL_HOST')
DB_USER = os.getenv('MYSQL_USER')
DB_PASSWORD = os.getenv('MYSQL_PASSWORD')
DB_NAME = os.getenv('MYSQL_DBNAME')

mydb = mysql.connector.connect(
  host=DB_HOST,
  user=DB_USER,
  password=DB_PASSWORD,
  port=3306
)

app = Flask(__name__)

@app.route("/")
def hello():
  if (mydb):
    x = "Connection successful"
  else:
    x = "Connection unsuccessful"
  return x

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

