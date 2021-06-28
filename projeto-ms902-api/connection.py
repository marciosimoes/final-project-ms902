import os
import mysql.connector
from mysql.connector import Error

#Funções de conexão
def create_connection(host_name, user_name, user_password, db_name):
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

#conectando no db
conn = create_connection(os.environ['HOST'], os.environ['USER'], os.environ['PASS'], os.environ['DB'])

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

#Trata requests
def trata_requests(requests, sort, order):
    if requests[0] is None or not isinstance(requests[0], str):
        requests[0] = sort
    if requests[1] is None or requests[1] not in ["asc", "desc"]:
        requests[1] = order
    if requests[2] is None or int(requests[2]) not in [5, 10, 25, 100]:
        requests[2] = 10
    if requests[3] is None or int(requests[3]) % 10 != 0:
        requests[3] = 0
    if requests[4] is not None:
        return True, [ requests[4], requests[2], requests[3] ]
    return False, [ requests[0], requests[1], requests[2], requests[3] ]

#Funções com as querys
def get_noticias(requests):
    requests = trata_requests(requests, "data", "desc")
    if requests[0]:
        select = """SELECT 
                    data, 
                    title, 
                    link, 
                    summary, 
                    tags, 
                    fonte
                FROM noticias
                WHERE title LIKE '%%%s%%'
                ORDER BY data DESC
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    else:
        select = """SELECT 
                    data, 
                    title, 
                    link, 
                    summary, 
                    tags, 
                    fonte
                FROM noticias
                ORDER BY %s %s
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    return execute_read_query(select)

def get_noticias_empresa(id_empresa, requests):
    requests = trata_requests(requests, "data", "desc")
    select = """SELECT
            n.data AS data, 
            n.title AS title, 
            n.link AS link,
            n.summary AS summary, 
            n.tags AS tags, 
            n.fonte AS fonte,
            c.relevancia AS relevancia       
        FROM citacoes AS c
        INNER JOIN noticias AS n
        ON c.noticia_id = n.id  
        WHERE c.empresa_id = '""" + id_empresa + """' 
        ORDER BY %s %s
        LIMIT %s
        OFFSET %s
        """ % tuple(requests[1])
    return execute_read_query(select)

def count_noticias(id_empresa = None):
    if id_empresa is None:
        select = "SELECT count(*) AS count FROM noticias"
    else:
        select = """SELECT count(*) AS count FROM citacoes AS c
                 INNER JOIN noticias AS n ON c.noticia_id = n.id
                 WHERE c.empresa_id = '%s'""" % (id_empresa)
    count = execute_read_query(select)
    return count[0]['count']

def get_logs(requests):
    requests = trata_requests(requests, "valor", "desc")
    if requests[0]:
        select = """SELECT * FROM logs
                WHERE info LIKE '%%%s%%'
                ORDER BY valor DESC
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    else:
        select = """SELECT * FROM logs
                ORDER BY %s %s
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    return execute_read_query(select)

def count_logs():
    select = "SELECT count(*) AS count FROM logs"
    count = execute_read_query(select)
    return count[0]['count']

def get_sinonimos(requests):
    requests = trata_requests(requests, "empresa_id", "asc")
    if requests[0]:
        select = """SELECT * FROM sinonimos
                WHERE substituicao LIKE '%%%s%%'
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    else:
        select = """SELECT * FROM sinonimos
                ORDER BY %s %s
                LIMIT %s
                OFFSET %s""" %  tuple(requests[1])
    return execute_read_query(select)

def count_sinonimos():
    select = "SELECT count(*) AS count FROM sinonimos"
    count = execute_read_query(select)
    return count[0]['count']

def post_sinonimo(sinonimo):
    cursor = conn.cursor()

    placeholders = ', '.join(['%s'] * len(sinonimo))
    columns = ', '.join(sinonimo.keys())
    sql = "REPLACE INTO sinonimos ( %s ) VALUES ( %s )" % (columns, placeholders)

    cursor.execute(sql, list(sinonimo.values()))
    conn.commit()

def get_empresas(requests):
    requests = trata_requests(requests, "nome_acao", "asc")
    if requests[0]:
        select = """SELECT * FROM empresas
                WHERE empresa LIKE '%%%s%%'
                LIMIT %s
                OFFSET %s""" % tuple(requests[1])
    else:
        select = """SELECT * FROM empresas
                ORDER BY %s %s
                LIMIT %s
                OFFSET %s""" %  tuple(requests[1])
    return execute_read_query(select)

def count_empresas():
    select = "SELECT count(*) AS count FROM empresas"
    count = execute_read_query(select)
    return count[0]['count']

def existe_empresa(id_empresa):
    select = "SELECT * FROM empresas WHERE nome_acao = '%s'" % (id_empresa)
    result = execute_read_query(select)
    if len(result) > 0:
        return (result[0]['empresa'], result[0]['setor'])
    return False

def post_empresa(empresa):
    cursor = conn.cursor()

    placeholders = ', '.join(['%s'] * len(empresa))
    columns = ', '.join(empresa.keys())
    sql = "REPLACE INTO empresas ( %s ) VALUES ( %s )" % (columns, placeholders)

    cursor.execute(sql, list(empresa.values()))
    conn.commit()
