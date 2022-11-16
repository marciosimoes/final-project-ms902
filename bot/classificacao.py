from nltk.tokenize import RegexpTokenizer
from connection import *

def buscar_citacoes(expressao, noticia, sinonimos, empresas):
    palavras = trata_texto(expressao)
    citacoes = []
    soma = 0
    for empresa in empresas:
        conta = citacoes_empresa(citacoes, noticia, palavras, sinonimos, empresa)
        soma += conta
    if len(citacoes) > 0:
        for citacao in citacoes:
            rel = relevancia(citacao['n_citacoes'], soma)
            citacao['relevancia'] = rel
            inserir_citacao(conn, citacao)

def trata_texto(texto):
    tokenizer = RegexpTokenizer(r'\w+')
    palavras = tokenizer.tokenize(texto.lower())
    return palavras

def citacoes_empresa(citacoes, noticia, palavras, sinonimos, empresa):
    palavras_search = cria_search(sinonimos, empresa)
    conta = conta_citacoes(palavras_search, palavras, empresa)
    if conta > 0:
        citacao = {
            'empresa_id': empresa['nome_acao'],
            'noticia_id': noticia,
            'n_citacoes': conta
        }
        citacoes.append(citacao)
    return conta

def cria_search(sinonimos, empresa):
    palavras = [ trata_texto(empresa['empresa']) ]
    for item in sinonimos:
        if empresa['nome_acao'] == item['empresa_id']:
            palavras = item['substituicao'].lower().split(',') \
                if item['substituicao'] is not None else ""
            palavras = [trata_texto(i) for i in palavras]
            break
    palavras.append(trata_texto(empresa['nome_acao']))
    setores = empresa['setor'].lower().split(',')
    palavras = palavras + [trata_texto(i) for i in setores]

    return palavras

def conta_citacoes(palavras_search, palavras, empresa):
    conta = 0
    for search in palavras_search:
        posicoes = posicoes_palavra(search, palavras)
        for posicao in posicoes:
            if sentencaOk(posicao, search, palavras):
                conta += 1
    return conta

def relevancia(n_citacoes, soma):
    rel = round(n_citacoes / soma * 100, 2)
    return str(rel) + "%"

def posicoes_palavra(search, palavras):
    posicoes = [i for i, val in enumerate(palavras) if val == search[0]]
    return posicoes

def sentencaOk(posicao, search, palavras):
    if not search:
        return True
    if not posicao < len(palavras):
        return False
    if search[0] == palavras[posicao]:
        return sentencaOk(posicao + 1, search[1:], palavras)
    else:
        return False
