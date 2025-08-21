from flask import Flask, render_template

kittoolsApp = Flask(__name__)

@kittoolsApp.route("/")
def hello_world():
    return render_template('home.html')

if __name__== '__main__':
    kittoolsApp.run(debug=True,port=3300)