# docker-mjpeg-proxy

- Create Self-Sign-Certificate inside directory `CERT/`:
```
cd CERT/
openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -days 365
```
- Install & Run NodeJS MJPEG Proxy Server Docker Container :

```
docker run -it -d -p 8081:8081 -e MJPEG_URL='YOUR_MJPEG_SOURCE_IP:8080/?action=stream' mjpeg-proxy-aarch64:latest
```
- Change `YOUR_MJPEG_SOURCE_IP` to IP of your MJPEG Stream Camera IP.
- Access MJPEG stream at [https://YOUR_MJPEG_SOURCE_IP:8081/index.jpg]()
