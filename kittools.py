from flask import Flask, render_template, request, redirect, url_for
from config import config

kittoolsApp = Flask(__name__)

@kittoolsApp.route("/")
def home():
    return render_template('home.html')

#Ruta para iniciar sesion
@kittoolsApp.route('/signin')
def signin():
    return render_template('signin.html')

#Ruta para registrarse
@kittoolsApp.route('/signup')
def signup():
    return render_template('signup.html')

if __name__== '__main__':
    kittoolsApp.run(debug=True,port=3300)