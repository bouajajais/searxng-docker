sudo chown -R $USER:$USER searxng
sed -i "s|ultrasecretkey|$(openssl rand -hex 32)|g" searxng/settings.yml

echo "Setup complete. You can now run searxng with the command:"
echo "docker-compose up -d"