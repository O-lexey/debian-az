cp -R etc /
apt-get update
apt-get install -y tilde-keyring
apt-get update
apt-get install -y tilde mc
echo 'SELECTED_EDITOR="/usr/bin/tilde"' > ~/.selected_editor