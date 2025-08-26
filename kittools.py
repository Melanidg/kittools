from flask import Flask, render_template

kittoolsApp = Flask(__name__)

@kittoolsApp.route("/")
def home():
    return render_template('home.html')

@kittoolsApp.route('/signup')
def signup():
    return render_template('signup.html')

@kittoolsApp.route('/signin')
def signin():
    return render_template('signin.html')

if __name__== '__main__':
    kittoolsApp.run(debug=True,port=3300)