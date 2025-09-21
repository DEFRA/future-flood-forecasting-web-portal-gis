# !/bin/bash
docker compose up --build -d
docker image prune -f
sleep 30
./bootstrap.sh
