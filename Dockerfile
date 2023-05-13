FROM python:3.10-alpine

RUN apk add --no-cache \
    build-base cairo-dev cairo cairo-tools \
    # pillow dependencies
    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY . .

ENTRYPOINT ["python", "app.py"]
