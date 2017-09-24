## /etc/nginx/sites-available/demo.zmrenwu.com   完整配置如下 用的时候记得把注释删掉
server {
    charset utf-8;
    listen 80;
    server_name localhost;
    location /static {
        alias /home/yangxg/sites/demo.zmrenwu.com/django-blog-tutorial/static;
    }

    location / {
        proxy_set_header Host $host;
        proxy_pass http://unix:/tmp/demo.zmrenwu.com.socket;
    }
}

