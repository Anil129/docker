
pass=`openssl rand -base64 10 | cut -b -10`
sudo touch /.adminPassword
chmod 755 /.adminPassword
echo "'$pass'" > /.adminPassword

