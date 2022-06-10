from flask import Flask
from markupsafe import escape

app = Flask(__name__)


@app.route('/ping')
def ping():
    return 'pong'


@app.route('/pong')
def pong():
    return 'ping'


@app.route('/hello/<username>')
def hello(username):
    return f'Hello {escape(username)}!'


# @app.route('/goodbye/<username>')
# def goodbye(username):
#     return f'Goodbye {escape(username)}!'


if __name__ == '__main__':
    app.run(host='localhost', port=8000)
