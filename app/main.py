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
def show_user_profile(username):
    # show the user profile for that user
    return f'Hello {escape(username)}!'


# @app.route('/age/<int:post_id>')
# def show_post(post_id):
#     # show the post with the given id, the id is an integer
#     return f'Post {post_id}'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
