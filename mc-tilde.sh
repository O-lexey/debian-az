cp etc/apt/sources.list.d/tilde.list /etc/apt/sources.list.d/tilde.list
apt-get update
apt-get install -y tilde-keyring
apt-get update
apt-get install -y tilde mc
echo 'SELECTED_EDITOR="/usr/bin/tilde"' > ~/.selected_editor