from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from my Flask website on Google Compute Engine!!!!!!!!!!!!!!!!!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True,port=int(os.environ.get('PORT',8080)))
