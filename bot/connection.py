import mysql.connector
from mysql.connector import Error
import time
import os

#Funções de conexão
def create_conn(host_name, user_name, user_password, db_name):
    conn = None
    try:
        conn = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("Connection to MySQL DB %s successful" % (db_name))
    except Error as e:
        print(f"The error '{e}' occurred")
    return conn

#conectando no db normal
conn = create_conn(
        os.environ['HOST'],
        os.environ['USER'],
        os.environ['PASS'],
        os.environ['DB']
)
#conectando no db de backup
connbk = create_conn(
        os.environ['HOST'],
        os.environ['USER_BK'],
        os.environ['PASS'],
        os.environ['DB_BK']
)

#funcões de execução das queries
def execute_query(query):
    cursor = conn.cursor()
    try:
        cursor.execute(query)
        conn.commit()
    except Error as e:
        print(f"The error '{e}' occurred")

def execute_read_query(query):
    cursor = conn.cursor()
    result = None
    try:
        cursor.execute(query)
        columns = [column[0] for column in cursor.description]
        results = []
        for row in cursor.fetchall():
            results.append(dict(zip(columns, row)))
        conn.commit()
        return results
    except Error as e:
        print(f"The error '{e}' occurred")

#funções com as queries manipuladas
def inserir_noticia(connection, noticia):
    cursor = connection.cursor()

    placeholders = ', '.join(['%s'] * len(noticia))
    columns = ', '.join(noticia.keys())
    sql = "INSERT INTO noticias ( %s ) VALUES ( %s )" % (columns, placeholders)

    cursor.execute(sql, list(noticia.values()))
    connection.commit()

def inserir_citacao(connection, citacao):
    cursor = connection.cursor()

    placeholders = ', '.join(['%s'] * len(citacao))
    columns = ', '.join(citacao.keys())
    sql = "INSERT INTO citacoes ( %s ) VALUES ( %s )" % (columns, placeholders)

    cursor.execute(sql, list(citacao.values()))
    connection.commit()

def existe_noticia(connection, id_news):
    select = "SELECT count(*) as count FROM noticias WHERE id = '%s'" % (id_news)
    cursor = connection.cursor()
    cursor.execute(select)
    count = cursor.fetchall()

    return True if count[0][0] > 0 else False

def create_backup():
    select = "SELECT * from noticias ORDER BY data DESC LIMIT 250"
    result = execute_read_query(select)
    for row in result:
        if not existe_noticia(connbk, row['id']):
            inserir_noticia(connbk, row)
            select = "SELECT * from citacoes WHERE noticia_id = %s" % (row['id'])
            citacoes = execute_read_query(select)
            for citacao in citacoes:
                inserir_citacao(connbk, citacao)

def inserir_log(evento):
    hora = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())
    sql = "INSERT INTO logs VALUES ( '%s', '%s' )" % (evento, hora)

    execute_query(sql)

def count_atualizacoes():
    select = "SELECT count(*) as count FROM logs WHERE info = 'ultima_atualizacao'"
    count = execute_read_query(select)

    return count[0]['count']

def get_empresas():
    select = "SELECT * FROM empresas"
    return execute_read_query(select)

def get_sinonimos():
    select = "SELECT * FROM sinonimos"
    return execute_read_query(select)

def get_noticias():
    select = "SELECT * FROM noticias"
    return execute_read_query(select)
