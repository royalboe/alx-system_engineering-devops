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
