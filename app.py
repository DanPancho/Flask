from flask import Flask

app = Flask(__name__)

@app.route('/hola')
def hello_world():
    return '¡Hola, Mundo!'

if __name__ == '__main__':
    port = int(5000)
    app.run(host='0.0.0.0', port=port)
