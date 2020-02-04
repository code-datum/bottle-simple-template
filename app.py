# the file to create app.py. it is just template for wizard.sh
import os
from bottle import route, run, template

index_html = ''' The template app for create app on bottle. Author name is <strong>{{ author }}</strong>'''


@route('/')
def index():
    return template(index_html, author='Template app')


@route('/name/<name>')
def name(name):
    return template(index_html, author=name)


if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8181))
    run(host='0.0.0.0', port=port, debug=True)
