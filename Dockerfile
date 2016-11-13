from nginx
run apt-get update && apt-get install -y curl && apt-get clean
add index.html /usr/share/nginx/html/
add tests /tests