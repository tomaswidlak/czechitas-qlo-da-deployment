#!/bin/bash

# Wait for MySQL to start
echo "Waiting for MySQL to be ready..."
until mysql -h"mysql" -u"${MYSQL_USER}" -p"${MYSQL_PASS}" -e "SELECT 1;" &> /dev/null; do
  sleep 1
done

# Execute seed SQL file
echo "Seeding database..."
mysql -h"mysql" -u"${MYSQL_USER}" -p"${MYSQL_PASS}" "${MYSQL_SCHEMA}" < /docker-entrypoint-initdb.d/seed.sql

echo "Database seeded successfully."
