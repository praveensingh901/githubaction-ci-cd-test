from flask import Flask, jsonify
import socket
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def system_info():
    hostname = socket.gethostname()
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    return jsonify({'hostname': hostname, 'current_time': current_time, 'message' : 'How are you doing today !!!'})

if __name__ == '__main__':
    app.run(debug=True)