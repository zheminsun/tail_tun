import os
import time
import urllib.request
import subprocess
import json
import tarfile
import zipfile
import psutil
import signal
from bottle import Bottle, run
from datetime import datetime

app = Bottle()

@app.route("/ht")
def read_root():
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return {"message": "Hello, World!", "time": current_time}

if __name__ == "__main__":

    run(app, host="0.0.0.0", port=55390)
