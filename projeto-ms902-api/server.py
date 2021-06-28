import json
import os
from connection import *
from columns_table import *

def pegar_requests():
    return [ request.args.get('sort'),
        request.args.get('order'),
        request.args.get('limit'),
        request.args.get('offset'),
        request.args.get('search')
    ]


from flask import Flask
from flask import jsonify
from flask import request, abort, render_template
#iniciando server
app = Flask(__name__)

@app.route("/noticias")
def noticias():
    return render_template("table.html",
        url_data="noticias",
        columns=columns_noticias,
        title='Noticias')

@app.route("/api/noticias")
def noticias_api():
    noticias = get_noticias(pegar_requests())
    return jsonify(noticias)

@app.route("/api/noticias/view")
def noticias_view():
    noticias = get_noticias(pegar_requests())
    total_noticias = count_noticias()
    for noticia in noticias:
        url = noticia['link']
        link_html = """
                <a class="btn btn-success" role="button" href="%s">Ver</button>
                """ % (url)
        noticia['link'] = link_html
    return jsonify({
        "total": total_noticias,
        "totalNotFiltered": total_noticias,
        "rows": noticias
    })

@app.route("/noticias/<id_empresa>")
def noticias_empresa(id_empresa):
    empresa = existe_empresa(id_empresa)
    if empresa:
        return render_template("table.html",
            url_data='noticias/%s' % (id_empresa),
            columns=columns_noticias_empresas,
            title='Noticias',
            subtitle=' %s | Setor: %s | Sigla: %s' % (empresa[0], empresa[1], id_empresa))
    return abort(404)

@app.route("/api/noticias/<id_empresa>")
def noticias_empresa_api(id_empresa):
    noticias = None
    if existe_empresa(id_empresa):
        noticias = get_noticias_empresa(id_empresa, pegar_requests())
    return jsonify(noticias)

@app.route("/api/noticias/<id_empresa>/view")
def noticias_empresa_view(id_empresa):
    noticias = None
    total_noticias = 0
    if existe_empresa(id_empresa):
        noticias = get_noticias_empresa(id_empresa, pegar_requests())
        total_noticias = count_noticias(id_empresa)
        for noticia in noticias:
            url = noticia['link']
            link_html = """
                        <a class="btn btn-success" role="button" href="%s">Ver</button>
                        """ % (url)
            noticia['link'] = link_html
    return jsonify({
        "total": total_noticias,
        "totalNotFiltered": total_noticias,
        "rows": noticias
    })

@app.route("/sinonimos")
def sinonimos():
    return render_template("table.html",
        url_data="sinonimos",
        columns=columns_sinonimos,
        title='Sinonimos')

@app.route("/api/sinonimos", methods=['GET', 'POST'])
def sinonimos_api():
    if request.method == 'GET':
        sinonimos = get_sinonimos(pegar_requests())
        return jsonify(sinonimos)
    if request.method == 'POST':
        request_data = request.get_json()
        sinonimo = { "error" : True }
        if request_data.get('empresa_id') and request_data.get('substituicao'):
            sinonimo = {
                'empresa_id' : request_data['empresa_id'],
                'substituicao': request_data['substituicao']
            }
            post_sinonimo(sinonimo)
        return jsonify(sinonimo)

@app.route("/api/sinonimos/view")
def sinonimos_view():
    sinonimos = get_sinonimos(pegar_requests())
    total_sinonimos = count_sinonimos()
    return jsonify({
        "total": total_sinonimos,
        "totalNotFiltered": total_sinonimos,
        "rows": sinonimos
    })

@app.route("/empresas")
def empresas():
    return render_template("table.html",
        url_data="empresas",
        columns=columns_empresas,
        title='Empresas')

@app.route("/api/empresas", methods=['GET', 'POST'])
def empresas_api():
    if request.method == 'GET':
        empresas = get_empresas(pegar_requests())
        return jsonify(empresas)
    if request.method == 'POST':
        request_data = request.get_json()
        empresa = { "error" : True }
        if request_data.get('empresa') and request_data.get('nome_acao') \
                and request_data.get('setor'):
            empresa = {
                'empresa' : request_data['empresa'],
                'nome_acao': request_data['nome_acao'],
                'setor': request_data['setor']
            }
            post_empresa(empresa)
        return jsonify(empresa)

@app.route("/api/empresas/view")
def empresas_view():
    empresas = get_empresas(pegar_requests())
    total_empresas = count_empresas()
    for empresa in empresas:
        link_html = """
                    <a class="btn btn-success" role="button" href="/noticias/%s">
                        Ver noticias
                    </button>
                    """ % (empresa['nome_acao'])
        empresa['link'] = link_html
    return jsonify({
        "total": total_empresas,
        "totalNotFiltered": total_empresas,
        "rows": empresas
    })

@app.route("/")
def index():
    return render_template("table.html",
        url_data="logs",
        columns=columns_logs,
        title='Logs')

@app.route("/api/logs")
def logs_api():
    logs = get_logs(pegar_requests())
    return jsonify(logs)

@app.route("/api/logs/view")
def logs_view():
    logs = get_logs(pegar_requests())
    total_logs = count_logs()
    return jsonify({
        "total": total_logs,
        "totalNotFiltered": total_logs,
        "rows": logs
    })

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
