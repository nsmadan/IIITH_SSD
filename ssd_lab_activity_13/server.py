from flask import  Flask, request, render_template, url_for, redirect, flash
from flask_sqlalchemy import SQLAlchemy





app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']='sqlite:///user.db' 

db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer,primary_key=True)
    username = db.Column(db.String(80),unique=True ,nullable=False)
    email = db.Column(db.String(80),unique=True ,nullable=False)
    password = db.Column(db.String(80), nullable=True)


@app.route('/do_signin', methods = ['POST'])
def do_signing():
    if(request.method=='POST'):
        req = request.get_json()
        username = req['username']
        email = req['email']
        password = req['password']
        check_user = User.query.filter_by(username=username).first()
        if(check_user is not None):
            if(check_user.password == password):
                login_user(check_user)                    
                return "LOGGED in successfully"
            else:
                return "Incorrect Password"
        else:
            return "No such User exists"


@app.route('/do_login',methods = ['POST'])
def do_login():
    if(request.method=='POST'):
        req = request.get_json() 
        email = req['email']
        password = req['password']

#db.create_all()
if "__main__" == __name__:
    app.run('localhost', 5000)

