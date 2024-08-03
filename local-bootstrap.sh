# !/bin/bash
docker compose up --build -d
docker image prune -f
sleep 5
./bootstrap.sh
