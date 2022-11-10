from flask import  Flask, request, render_template, url_for, redirect, flash
from flask_sqlalchemy import SQLAlchemy


def signin():
    username = input("Enter username: ")
    email = input ("Enter Email: ")
    password = input("Enter password: ")

    payload = {
        "username" : username,
        "email" : email,
        "password" : password
    }

    resp = requests.post("http://127.0.0.1:5000/do_singin",json=payload).content.decode()

    print(resp)
