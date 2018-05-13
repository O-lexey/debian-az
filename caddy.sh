curl https://getcaddy.com | bash -s personal http.git
chown root:root /usr/local/bin/caddy
chmod 755 /usr/local/bin/caddy
setcap 'cap_net_bind_service=+eip' /usr/local/bin/caddy
mkdir -p /etc/caddy
chown -R root:www-data /etc/caddy
mkdir -p /etc/ssl/caddy
chown -R www-data:root /etc/ssl/caddy
chmod 770 /etc/ssl/caddy
touch /etc/caddy/Caddyfile
mkdir -p /var/www
chown www-data:www-data /var/www
chmod 755 /var/www
curl -L https://github.com/mholt/caddy/raw/master/dist/init/linux-systemd/caddy.service | sed "s/;CapabilityBoundingSet/CapabilityBoundingSet/" | sed "s/;AmbientCapabilities/AmbientCapabilities/" | sed "s/;NoNewPrivileges/NoNewPrivileges/" | tee /etc/systemd/system/caddy.service
chown root:root /etc/systemd/system/caddy.service
chmod 744 /etc/systemd/system/caddy.service
systemctl daemon-reload
systemctl enable caddy.service
