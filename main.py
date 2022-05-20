import datetime

from flask import Flask, render_template, request
from flask_wtf import FlaskForm
from wtforms import SubmitField, SelectField, RadioField, HiddenField, StringField, IntegerField, FloatField, DateField
from wtforms.validators import InputRequired, Length, Regexp, NumberRange
from datetime import date
import database_conn
import os
import database_conn
from flask_bootstrap import Bootstrap



SECRET_KEY = os.urandom(32)


app = Flask(__name__)
app.config['SECRET_KEY'] = SECRET_KEY
Bootstrap(app)



class AddRecord(FlaskForm):
    # id used only by update/edit
    id_field = HiddenField()
    student_id = IntegerField("Student ID")
    name = StringField('Nombre de Estudiante')
    apellido = StringField('apellido')
    grado = SelectField('Grado',
                        choices=[('', ''), (9, 9),
                                 (10, 10),
                                 (11, 11),
                                 (12, 12)])
    nacimiento = DateField('Fecha de Nacimiento')
    # updated - date - handled in the route function
    escuela = StringField('Escuela')
    genero = SelectField('Genero',
                        choices=[('', ''), ('M', 'M'),
                                 ('F', 'F'),
                                 ('N-B', 'N-B'),
                                 ('O', 'O')])
    submit = SubmitField('Add/Update Record')


@app.route('/', methods=['GET', 'POST'])
def index():
    form = AddRecord()
    if form.validate_on_submit():
        student_id = int(request.form["student_id"])
        name = request.form['name']
        escuela = request.form['escuela']
        genero = request.form['genero']
        apellido = request.form['apellido']
        nacimiento = request.form['nacimiento']
        grado = request.form['grado']

        db = database_conn.DatabaseConnection()
        # get today's date from function, above all the routes
        # the data to be inserted into Sock model - the table, socks
        row = (student_id, name, apellido, nacimiento, grado, escuela, genero)
        # Flask-SQLAlchemy magic adds record to database
        query = "INSERT INTO comatec.student (student_id, name, lastname , birth_date, grade, school, gender) VALUES (%s, %s, %s, %s, %s, %s, %s)"

        db.insert_data(query, row)
        # create a message to send to the template
    return render_template('index.html', form=form)

