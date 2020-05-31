if eval $(grep -v '^#' ./.env.local | sed 's/^/export /'); then
    if docker-compose -f "docker-compose.yml" up -d --build; then
        start http://${APPS_WEBSPA_HOST}:${APPS_WEBSPA_PORT}
    else
        echo "container can not start"
    fi
else
    echo "env values from .env.local file can not be set"
fi