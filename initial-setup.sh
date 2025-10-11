if [ ! -f .env ]; then
    touch .env
    echo "TS_AUTHKEY=CHANGE_THIS_TAILNET_OAUTH_KEY" >> .env
    echo "SEARXNG_SECRET=CHANGE_THIS_SECRET" >> .env
    echo "HOSTNAME=searxng" >> .env
    echo "DOMAIN=CHANGE_THIS_TAILNET_DOMAIN.ts.net" >> .env
fi

sed -i "s|CHANGE_THIS_SECRET|$(openssl rand -hex 32)|g" ./.env

mkdir data

echo "Setup complete. You can now run searxng with the command:"
echo "docker compose up -d"