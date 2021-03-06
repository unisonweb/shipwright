server {
  listen __PORT__;
  root /srv/share;

  location ~ /api/(?<rest>.*) {
    proxy_pass http://127.0.0.1:26117/sekret/api/$rest$is_args$args;
    proxy_set_header Host $http_host;
  }

  location /nginx_status {
           stub_status on;
  }

  location /latest {
    rewrite (.*) /index.html;
  }
}