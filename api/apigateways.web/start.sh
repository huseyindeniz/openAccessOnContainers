if eval $(grep -v '^#' ../../.env.local | sed 's/^/export /'); then
    if docker-compose -f "docker-compose.yml" up -d --build; then
        start http://${APIGATEWAYS_WEB_SWAGGER_EDITOR_HOST}:${APIGATEWAYS_WEB_SWAGGER_EDITOR_PORT}
    else
        echo "container can not start"
    fi
else
    echo "env values from .env.local file can not be set"
fi