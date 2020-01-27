from flask import Flask

from app.views import Main


def create_app():
    app = Flask(__name__)
    app.add_url_rule('/', view_func=Main.as_view('home'))
    return app
