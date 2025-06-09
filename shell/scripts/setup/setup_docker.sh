# Install Docker using pacman
sudo pacman -Syu --noconfirm docker docker-buildx docker-compose
yay -S lazydocker

# Enable and start Docker service
sudo systemctl enable --now docker

# Give this user privileged Docker access
sudo usermod -aG docker "${USER}"

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json

# Restart Docker to apply changes
sudo systemctl restart docker
