git pull
rm -rf build
make
make install
sudo systemctl restart php8.1-fpm
sudo systemctl restart nginx