#!/bin/bash

set -e

echo "================================="
echo " Homelab installation"
echo "================================="

echo "[1/6] Mise à jour système"

sudo apt update
sudo apt upgrade -y

echo "[2/6] Installation outils"

sudo apt install -y \
    curl \
    wget \
    git \
    unzip \
    htop \
    vim

echo "[3/6] Installation Docker"

curl -fsSL https://get.docker.com | sh

sudo usermod -aG docker $USER

echo "[4/6] Installation Tailscale"

curl -fsSL https://tailscale.com/install.sh | sh

echo "[5/6] Démarrage Docker"

sudo systemctl enable docker
sudo systemctl start docker

echo "[6/6] Vérifications"

docker --version
docker compose version

echo ""
echo "Installation terminée."
echo ""
echo "Prochaine étape :"
echo ""
echo "sudo tailscale up"
echo ""
echo "Puis :"
echo ""
echo "cd docker-compose/uptime-kuma"
echo "docker compose up -d"
echo ""
echo "cd ../monitoring"
echo "docker compose up -d"
echo ""
echo "cd ../calorie-tracker"
echo "docker compose up -d"

echo ""
echo "================================="
echo " Versions installées"
echo "================================="

git --version
docker --version

echo ""

echo "Docker Compose"
docker compose version

echo ""

echo "Installation terminée"