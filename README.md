Showcase of several eager content preloading strategies.

1. HTTP/2 Push
2. Link Header
3. Preload HTML tag

## How to run

HTTP/2 Push requires HTTPS connection, therefore using Docker with nginx that will create a certificate on startup.

1. Install docker.
2. From root, build the image by running `docker build -t content-preload .`
3. Run the image: `docker run -dp 443:443 -dp 80:80 content-preload`
4. Open localhost
5. If using Chrome, you'll get unsafe warning. Type in 'thisisunsafe' in the page to bypass.