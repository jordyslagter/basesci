FROM dalbitresb12/packwiz:2025-01-20

WORKDIR /app

COPY . .

EXPOSE 8080

HEALTHCHECK CMD wget --no-verbose --tries=1 --spider http://localhost:8080 || exit 1

CMD ["serve"]
