from flask import Blueprint
from flask import render_template
from flask import request


blueprint = Blueprint('main', __name__)


@blueprint.route('/', methods=['GET'])
def home():
    return render_template('index.html')