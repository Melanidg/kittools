from flask import Flask, render_template, request, redirect, url_for
from config import config
from werkzeug.security import generate_password_hash
from flask_mysqldb import MySQL
from models.entities.User import User
from models.ModelUser import ModelUser
from flask_login import LoginManager, login_user, logout_user

kittoolsApp = Flask(__name__)
db          = MySQL(kittoolsApp)
signinManager = LoginManager(kittoolsApp)

@signinManager.user_loader
def load_user(id):
    return ModelUser.get_by_id(db, id)

@kittoolsApp.route("/")
def home():
    return render_template('home.html')

#Ruta para iniciar sesion
@kittoolsApp.route('/signin')
def signin():
    return render_template('signin.html')

#Ruta para registrarse
@kittoolsApp.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        nombre = request.form['nombre']
        correo = request.form['correo']
        clave = request.form['clave']
        claveCifrada = generate_password_hash(clave)
        regUsuario = db.connection.cursor()
        regUsuario.execute("INSERT INTO usuario (nombre, correo, clave) VALUES (%s, %s, %s)", (nombre.upper(), correo, clave))
        db.connection.commit()
        return redirect(url_for('home'))
    else:
        return render_template('signup.html')

if __name__ == '__main__':
    kittoolsApp.config.from_object(config['development'])
    kittoolsApp.run(port=3300)