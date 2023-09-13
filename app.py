from flask import Flask
#app = Flask(__name__)
app=Flask(__name__)
@app.route("/")
def home():
    return "<h1>hello, flask<h1>"

@app.route("/")
def hello_world():
    return "<h2>hello world</h2>"

@app.route("/")
def hello_world2():
    return "<h3>hello world</h3>"
    
@app.route("/shailesh")
def hello_world3():
    return "<h4>hello world</h4>"

if __name__=="__main__":
    app.run(host="0.0.0.0")
    
    