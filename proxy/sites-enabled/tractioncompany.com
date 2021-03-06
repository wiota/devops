server {
    listen 80;
    server_name *.tractioncompany.com;
    location / {
        proxy_pass http://facade:5000;
        proxy_redirect off;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
