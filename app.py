import os

import cairosvg
from flask import Flask, Response

app = Flask(__name__)


@app.route('/convert/<path:url>')
def convert_image(url):
    png_data = cairosvg.svg2png(url=url, parent_width=300, parent_height=300)
    return Response(png_data, mimetype='image/png')


if __name__ == '__main__':
    server_port = os.environ.get('PORT', '8080')
    app.run(debug=False, port=server_port, host='0.0.0.0')
