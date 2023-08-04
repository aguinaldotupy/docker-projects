

### Simple start
```bash
./configure.sh
docker compose up -d
```

### Copy inital files with vars
```bash
cp .env.example .env
cp docker-compose.yml.example docker-compose.yml
cp redis/redis.conf.example redis/redis.conf
cp mysql/init-db.sql.example mysql/init-db.sql
```

### Example nginx file
```nginx
server {
    disable_symlinks off;
    server_name dummy.test;

    root /var/www/dummy/public;

    index index.html index.php;

    client_max_body_size 100M;

    location / {
        index index.php index.html index.htm;
        try_files $uri $uri/ /index.php?$args;
    }

    location ~ \.php$ {
        fastcgi_pass php82:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }

    error_log /var/log/nginx/dummy-error.log;
}
```


### Have problem with ssl?
Check documentation https://github.com/FiloSottile/mkcert