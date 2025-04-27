FROM ghost:5-alpine

# Install PostgreSQL client
RUN apk add --no-cache --virtual .build-deps \
    gcc \
    g++ \
    make \
    python3 \
    && npm install --production pg \
    && apk del .build-deps