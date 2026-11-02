# Installation cible

## Ubuntu

sudo apt update
sudo apt upgrade -y

## Docker

curl -fsSL https://get.docker.com | sh

sudo usermod -aG docker $USER

## Docker Compose

docker compose version

## Tailscale

curl -fsSL https://tailscale.com/install.sh | sh

sudo tailscale up