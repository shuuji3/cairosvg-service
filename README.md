# cairosvg-service

**cairosvg-service** is a small service that converts SVG image to PNG image.

## Usage

```shell
docker build . -t cairosvg-service
docker run --rm -it -p 8080:8080 --name cairosvg-service cairosvg-service
```

Then, `http://localhost:8080/<url>` returns a converted PNG image.

Example URL: https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/android.svg

⚠ Note: Warning: This service is intended for private use only. Security is not considered, for example, in the case of a malicious URL being given.
