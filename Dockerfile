FROM nginx


RUN apt-get update && apt-get install -y \
    git \
  && rm -rf /var/lib/apt/lists

RUN mv /usr/share/nginx/html /usr/share/nginx/html.bak \
  && git clone https://github.com/jmoenig/Snap--Build-Your-Own-Blocks.git /usr/share/nginx/html \
  && rm -rf /usr/share/nginx/html/.git

WORKDIR /usr/share/nginx/html

EXPOSE 80
