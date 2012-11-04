from flask import Flask, session, render_template, redirect, request, url_for, g, flash, abort 
import os
import sqlite3
from higgs import recipe
# flask session: browser session (info identifying particular user of a web app)
# model session: database session (connection to database)

app = Flask (__name__)
SECRET_KEY = "particle_physics_mixology"
app.config.from_object(__name__)

# @app.teardown_request
# def shutdown_session(exception = None):
#     db_session.remove()

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/recipe",methods=['POST'])
def order():
	particle_config = request.form['particle_config']
	data=recipe(particle_config)
	
	return render_template("recipe.html", code = data)


if __name__ == "__main__":
    app.run(debug = True)
