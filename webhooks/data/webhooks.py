# -*- coding: utf-8 -*-

from flask import abort, Flask, request
import importlib


app = Flask(__name__)


@app.route('/')
def no_hook():
    abort(404)


@app.route('/<hook>', methods=['GET', 'POST'])
def hook(hook):
    module_name = hook.replace('-', '_')

    try:
        module = importlib.import_module('hooks.{}'.format(module_name))
        run = getattr(module, 'run')
        response = run(request)
        return response if response else "OK"
    except (ImportError, AttributeError):
        abort(501)
    except:
        abort(500)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
