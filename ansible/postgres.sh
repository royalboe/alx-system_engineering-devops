#!/usr/bin/bash

echo "Updating system"

sudo apt -y update

echo "Upgrading system"

sudo apt -y upgrade

echo "Installing postgresql"

sudo apt install -y postgresql postgresql-contrib

echo "Giving postgres user a shell"

sudo chsh postgres -s /bin/bash

echo "Start postgresql service"

sudo systemctl start postgresql.service

echo " Create a new role for postgres"
sudo -u postgres createuser --goodybag
sudo -i -u postgres psql -c "CREATE USER goodybag WITH ENCRYPTED PASSWORD 'goodybag'"

echo "Create a new database"
sudo -i -u postgres psql -c "CREATE DATABASE laraveldb WITH ENCODING 'UTF8' TEMPLATE template0"

echo "Grant user with privilege over db"
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE laraveldb TO goodybag"

echo 'Configure user login method'
echo -e 'local\tall\t\goodybag\t\t\t\tmd5' >> /etc/postgresql/15/main/pg_hba.conf

sudo systemctl restart postgresql.service
