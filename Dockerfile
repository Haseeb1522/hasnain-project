FROM nginx:alpine

# purani default website hata do
RUN rm -rf /usr/share/nginx/html/*

# apni website copy karo
COPY . /usr/share/nginx/html

# port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
