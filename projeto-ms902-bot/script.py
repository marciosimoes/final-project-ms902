import feedparser
import dateutil.parser
import time
import hashlib
import os
from connection import *
from elements import *
from classificacao import *


#URLs dos feeds
urls = [ 
    'https://www.moneytimes.com.br/feed/',
    'https://www.istoedinheiro.com.br/feed/',
    'https://exame.com/feed/',
    'https://pox.globo.com/rss/valor',
    'https://www.infomoney.com.br/feed/'
]

def update_feed(feed, sinonimos, empresas):
    for item in feed["items"]:
        noticia = gerar_noticia(item['link'], feed.feed.title)
        if not existe_noticia(conn, noticia['id']):
            noticia = processa_noticia(noticia, item)
            expressao = noticia['title'] + " " \
                        + noticia['summary'] + " " \
                        + noticia['news'] + " " \
                        + noticia['tags']
            buscar_citacoes(expressao, noticia['id'], sinonimos, empresas)

def gerar_noticia(link, fonte):
    md5 = hashlib.md5()
    md5.update(link.encode('utf-8'))
    noticia = {}
    noticia['id'] = md5.hexdigest()
    noticia['fonte'] = fonte
    return noticia

def processa_noticia(noticia, item):
    noticia['title'] = item['title']
    noticia['link'] = item['link']
    noticia['summary'] = text_from_html(item["summary"])
    noticia['tags'] = tags_from_html(item["tags"])
    noticia['data'] = dateutil.parser.parse(item['published']).astimezone(dateutil.tz.tzlocal())
    if item.get('content') is not None:
        noticia['news'] = text_from_html(item["content"][0].value)
    else:
        noticia['news'] = text_from_html(item["summary_detail"].value)
    inserir_noticia(conn, noticia)
    inserir_log("ultima_noticia")

    return noticia

#Roda infinitas vezes achando novas noticias
while True:
    sinonimos = get_sinonimos()
    empresas = get_empresas()
    for url in urls:
        feed = feedparser.parse(url)
        update_feed(feed, sinonimos, empresas)
    inserir_log("ultima_atualizacao")

    if count_atualizacoes() % 18 == 0:
        create_backup()
        inserir_log("ultimo_backup")
    time.sleep(int(os.environ['TEMPO_LOOP']))
