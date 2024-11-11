#!/bin/sh

# Check if the required environment variables are set
if [ -z "$ENV_REMOTE_USER" ] || [ -z "$ENV_REMOTE_PASS" ]; then
  echo "ENV_REMOTE_USER and ENV_REMOTE_PASS must be set"
  exit 1
fi

# Wait for 20 seconds
sleep 20

# Create the remote user and grant privileges
mysql -h ${ENV_MYSQL_SERVER} -u root -p${ENV_ROOT_PASSWORD} -e "
CREATE USER IF NOT EXISTS '${ENV_REMOTE_USER}'@'%' IDENTIFIED BY '${ENV_REMOTE_PASS}';
GRANT ALL PRIVILEGES ON *.* TO '${ENV_REMOTE_USER}'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
"
