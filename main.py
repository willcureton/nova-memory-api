from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, Nova is naughty."

if __name__ == "__main__":
    import os
    port = int(os.environ.get("PORT", 8080))
    print(f"Starting app on port {port}")
    app.run(host="0.0.0.0", port=port)
