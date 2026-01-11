FROM ghcr.io/gohugoio/hugo:v0.154.4 AS build
WORKDIR /site
COPY . .

# Allow overriding base URL at build time if needed.
ARG HUGO_BASEURL=https://legedith.github.io/jott/
ENV HUGO_ENV=production

RUN hugo --gc --minify --baseURL ${HUGO_BASEURL}

FROM nginx:1.27-alpine
COPY --from=build /site/public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
