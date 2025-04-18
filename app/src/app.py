from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

@app.route('/data')
def data():
    try:
        connection = mysql.connector.connect(
            host="mysql",
            user="root",
            password="rootpassword",
            database="testdb"
        )
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM test_table;")
        rows = cursor.fetchall()
        return jsonify(rows), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4743)