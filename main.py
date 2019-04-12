"""
Minimal socket implementation
"""
import logging
import random
import time

import socketio
from flask import Flask, render_template

APP = Flask(__name__)
SIO = socketio.Server()
SIOAPP = socketio.WSGIApp(SIO, APP)


@APP.route("/")
def home():
    """Home Page handler."""
    return render_template("home.html", app="randomic rabbit", page="randomic rabbit")


@SIO.on("start")
def message(sid, data):
    """Socket message updater."""
    logging.info(["message", sid, data])
    seconds = random.randint(1, 9)
    time.sleep(seconds)
    SIO.emit("update", seconds)
